# How to use

1. Copy all shell scripts (`scriptname.sh` files) in `~/bin` directory.
1. For better user exprerience copy `.bash_aliases` file or its contents to `~` directory. After that, you cau use a scripts just by typing `aliasname` in terminal.

## How to create a custom shell script

1. Create `scriptname.sh` file.
1. Place `#!/bin/bash` at the top of the file and then write your script down below.
1. Open folder with script in terminal and type `chmod +x <scriptname>.sh` to make it executable.
1. Run script by typing `./scriptname.sh` or `bash scriptname.sh` (if `chmod` wasn't changed).
