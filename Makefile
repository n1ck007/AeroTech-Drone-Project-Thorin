SRC_DIR = src
BUILD_DIR = build

SRC_FILES := $(wildcard $(SRC_DIR)/*.tex)
DOCS := $(notdir $(SRC_FILES:.tex=))

.PHONY: all
all: $(DOCS)

$(DOCS):
	latexmk -synctex=1 -interaction=nonstopmode -file-line-error -pdf -outdir=$(BUILD_DIR) $(SRC_DIR)/$@.tex
	rm ${BUILD_DIR}/*.aux ${BUILD_DIR}/*.fdb_latexmk ${BUILD_DIR}/*.fls ${BUILD_DIR}/*.log

.PHONY: clean
clean:
	rm -rf $(BUILD_DIR)
