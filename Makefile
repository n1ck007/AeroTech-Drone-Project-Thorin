SRC_DIR = src
BUILD_DIR = build
OUTPUT_DIR = output
SRC_FILES := $(wildcard $(SRC_DIR)/*.tex)
DOCS := $(notdir $(SRC_FILES:.tex=))

.PHONY: all
all: $(DOCS)

$(DOCS):
	mkdir -p $(BUILD_DIR)/$@ $(OUTPUT_DIR)
	latexmk -pdf -outdir=$(BUILD_DIR)/$@ $(SRC_DIR)/$@.tex
	mv $(BUILD_DIR)/$@/$@.pdf $(OUTPUT_DIR)/

.PHONY: clean
clean:
	rm -rf $(BUILD_DIR) $(OUTPUT_DIR)
