PANDOC   := pandoc
DEFAULTS := pandoc/report.yaml
OUTPUT   := upc-pre-202610-1asi0572-17757-metasoft-report-av2.pdf

XELATEX_OK := $(shell where xelatex >nul 2>&1 && echo yes)
INKSCAPE_OK := $(shell where inkscape >nul 2>&1 && echo yes)

ifneq ($(XELATEX_OK),yes)
  $(error XeLaTeX no encontrado en PATH. Ejecuta: where xelatex)
endif

.PHONY: pdf tex svgs svgs-force clean open check

check:
	@where xelatex
	@where inkscape 2>nul || echo [WARN] Inkscape no esta en PATH

svgs:
ifeq ($(INKSCAPE_OK),yes)
	@for %%f in (assets\img\chapter-IV\*.svg \
	             assets\img\chapter-V\*.svg \
	             assets\img\chapter-VI\*.svg \
	             assets\img\*.svg) do \
	  if not exist "%%~dpnf.pdf" ( \
	    echo [SVG -> PDF] Convirtiendo %%~nxf ... & \
	    inkscape --export-type=pdf "%%f" \
	  )
else
	@echo [SKIP] Inkscape no esta en PATH. Se usaran los PDF vectoriales existentes.
endif

svgs-force:
ifeq ($(INKSCAPE_OK),yes)
	@for %%f in (assets\img\chapter-IV\*.svg \
	             assets\img\chapter-V\*.svg \
	             assets\img\chapter-VI\*.svg \
	             assets\img\*.svg) do \
	    echo [SVG -> PDF FORZADO] Convirtiendo %%~nxf ... & \
	    inkscape --export-type=pdf "%%f"
else
	$(error Inkscape no esta en PATH)
endif

pdf: svgs
	pandoc --defaults "$(DEFAULTS)" \
	  --pdf-engine=xelatex \
	  --pdf-engine-opt="-shell-escape"

tex:
	pandoc --defaults "$(DEFAULTS)" -o pandoc/output.tex

open:
	start $(OUTPUT)

clean:
	-del /Q $(OUTPUT) 2>nul
	-del /Q pandoc\output.tex 2>nul