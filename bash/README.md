# How to use

Copy all scripts in `~/bin` directory.

## How to create a custom shell script

1. Create `scriptname.sh` file.
1. Place `#!/bin/bash` at the top of the file and then write your script down below.
1. Open the containing folder in terminal and type `chmod +x <scriptname>.sh` in terminal to make a script executable.
1. Run script by typing `./scriptname.sh` or `bash scriptname.sh` (if `chmod` wasn't changed).

Note: for better user exprerience put `.bash_aliases` file in `~` directory. After that, you cau use a scripts by typing `aliasname` in terminal.
