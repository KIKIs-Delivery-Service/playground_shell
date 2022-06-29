#!/bin/bash

#_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
# Configuration in Automator
# - "Quick Action"
#   - Actions > Library > Utilities > "Run Shell Script"
#     - Workflow receives current "files or folders" in "Finder"
#     - Image "Action"
#     - Shell: "/bin/zsh"
#     - Pass input: "as arguments"
#_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/

for f in "$@"
do
    open -a 'Visual Studio Code' "$f"
done