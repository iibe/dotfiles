# Bash

## How to use

1. Copy all shell scripts (`script_name.sh` files) in `~/bin` directory.
1. For better user exprerience copy `.bash_aliases` file in `~` directory. After that, you cau use a scripts just by typing `alias_name` in terminal.

## How to create a custom shell script

1. Create script `script_name.sh` file.
1. Place `#!/bin/bash` at the top of it and then write your script down below.
1. Open a folder with a script in terminal and type `chmod +x script_name.sh` to make it executable.
1. Run script by typing `./script_name.sh` or add `alias alias_name='bash script_name.sh'` in your `.bash_aliases` file (e.g. `alias ide='bash IDE.sh'`). Now you can run scripts by typing `alias_name` in terminl.
