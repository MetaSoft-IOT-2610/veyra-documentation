-- ──────────────────────────────────────────────────────────────────
-- fix-paths.lua
-- ──────────────────────────────────────────────────────────────────

-- ── Helpers ───────────────────────────────────────────────────────
local function is_cover_div(html)
  return html:match("logo%-upc") or
         (html:match("font%-family") and html:match("Universidad Peruana"))
end

local function is_page_break(html)
  return html:match("page%-break%-after%s*:%s*always") or
         html:match("page%-break%-before%s*:%s*always")
end

-- ── Bloques HTML ──────────────────────────────────────────────────
function RawBlock(el)
  if el.format ~= "html" then return end
  if is_cover_div(el.text)  then return {} end
  if is_page_break(el.text) then
    return pandoc.RawBlock("latex", "\\newpage")
  end
  local ok, parsed = pcall(pandoc.read, el.text, "html")
  if ok and parsed and #parsed.blocks > 0 then
    return parsed.blocks
  end
  return {}
end

-- ── Inline HTML ───────────────────────────────────────────────────
function RawInline(el)
  if el.format ~= "html" then return end
  if el.text:match("^<br") then return pandoc.LineBreak() end
  local ok, parsed = pcall(pandoc.read, el.text, "html")
  if ok and parsed then
    local inlines = {}
    for _, block in ipairs(parsed.blocks) do
      if block.t == "Para" then
        for _, inline in ipairs(block.content) do
          table.insert(inlines, inline)
        end
      end
    end
    if #inlines > 0 then return inlines end
  end
  return pandoc.Str("")
end

-- ── Imágenes ──────────────────────────────────────────────────────
function Image(el)
  local src = el.src

  if src:match("^https?://") then
    local caption = pandoc.utils.stringify(el.caption)
    local label   = (caption ~= "") and caption or src
    return pandoc.Emph({ pandoc.Str("[Figura: " .. label .. "]") })
  end

  src = src:gsub("\\", "/")
  src = src:gsub("^%.%.%/", "")
  src = src:gsub("^%.%/",   "")
  src = src:gsub("^/",      "")

  -- SVG → PDF vectorial (pre-convertido por el nuevo make svgs)
  if src:match("%.svg$") then
    src = src:gsub("%.svg$", ".pdf")
  end

  el.src = src
  return el
end

-- ── Inyección de \graphicspath usando el CWD real ─────────────────
-- Corre una sola vez sobre el documento completo.
function Pandoc(doc)
  local cwd = pandoc.system.get_working_directory()
  cwd = cwd:gsub("\\", "/")   -- LaTeX necesita forward slashes

  -- Construye \graphicspath con las carpetas de assets
  local paths = {
    cwd .. "/assets/img/introduction/",
    cwd .. "/assets/img/chapter-I/",
    cwd .. "/assets/img/chapter-II/",
    cwd .. "/assets/img/chapter-III/",
    cwd .. "/assets/img/chapter-IV/",
    cwd .. "/assets/img/chapter-V/",
    cwd .. "/assets/img/chapter-VI/",
    cwd .. "/assets/img/",
    cwd .. "/assets/",
    cwd .. "/",
  }

  local graphicspath = "\\graphicspath{"
  for _, p in ipairs(paths) do
    graphicspath = graphicspath .. "{" .. p .. "}"
  end
  graphicspath = graphicspath .. "}"

  table.insert(doc.blocks, 1, pandoc.RawBlock("latex", graphicspath))
  return doc
end