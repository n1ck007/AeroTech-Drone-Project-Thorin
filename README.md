# AeroTech-Drone-Project-Thorin #
UTA CSE-4380, Information Security 1, AeroTech-Drone-Project

## Assignment 1: Section Assignments ##
- System Description: Ben
- Data Flow Analysis: Eli & Obadah
- Security Categorization: Nick & Betim

## Project Configuration ##
### Install LaTeX ###
Install the full latex library of packages.
- Linux: `sudo apt install texlive-full`
- Mac: `brew install texlive`
- Windows: https://tug.org/texlive/windows.html

### Compile and Preview ###
The project's `settings.json` is configured to autobuild when a `.tex` file is saved. All source files should be stored in the `src` directory. The generated PDFs and synctex files are store in the `build` directory.

You can use `Ctrl+Alt+j` shortcut bring up the code/preview split panel.

### Compile with Makefile ###
| Command       | Usage                                        |
|---------------|----------------------------------------------|
| `make`        | build all `.tex` files found in `src`        |
| `make <file>` | build a specific `<file>.tex` found in `src` |
| `make clean`  | remove all build artifacts and pdf files     |
