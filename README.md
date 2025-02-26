# AeroTech-Drone-Project-Thorin #
UTA CSE-4380, Information Security 1, AeroTech-Drone-Project

## Assignment 1: Section Assignments ##
- System Description: Ben
- Data Flow Analysis: Eli & Obadah
- Security Categorization: Nick & Betim

### Definition of Done ###
Each team’s task should produce a PR with the fully complete, ready to compile and ship, latex code. If the PR review produces any issues, they should be fixed. Once the PR passes review that team’s task is officially completed.

## Project Configuration ##
### Install LaTeX ###
Install the full latex library of packages.
- Linux: `sudo apt install texlive-full`
- Mac: `brew install texlive`
- Windows: https://tug.org/texlive/windows.html

### Auto-Compile ###
The project's `settings.json` is configured to autobuild when a `.tex` file is saved. All source files should be stored in the `src` directory. The generated PDFs and synctex files are store in the `build` directory.

### Using SyncTex ###
SyncTex allows you to quickly jump between the source code and the corresponding location in the PDF. 
- Forward Search: `Ctrl+Alt+j` jump from `.tex` to PDF
- Inverse search: `Ctrl-Click` jump from PDF to `.tex`
