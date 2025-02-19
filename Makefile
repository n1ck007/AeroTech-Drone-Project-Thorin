SRC_DIR = src
BUILD_DIR = build
SRC_FILES := $(shell find $(SRC_DIR) -type f -name "*.tex")
DOCS := $(patsubst $(SRC_DIR)/%,%,$(SRC_FILES:.tex=))

# Compile all and rm artifacts except synctex
.PHONY: all
all: $(DOCS)
	bash -c "rm -f build/*.{aux,fdb_latexmk,fls,log,toc}"

# Compile all and rm artifacts leaving only pdfs
.PHONY: pdf
pdf: $(DOCS)
	bash -c "rm -f build/*.{synctex,synctex.gz,aux,fdb_latexmk,fls,log,toc}"

# Compile all and keep artifacts
.PHONY: artifacts
artifacts: $(DOCS)

# Compile indiviual files
$(DOCS):
	mkdir -p $(BUILD_DIR)/$(dir $@)
	latexmk -synctex=1 -interaction=nonstopmode -file-line-error -pdf -outdir=$(BUILD_DIR)/$(dir $@) $(SRC_DIR)/$@.tex

.PHONY: clean
clean:
	rm -rf $(BUILD_DIR)
