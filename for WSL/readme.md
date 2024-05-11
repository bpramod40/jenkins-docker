
To give executable permissions to a script in Ubuntu using the chmod command, follow these steps:

Open a terminal window.

Navigate to the directory where your script is located using the cd command. For example:


cd /path/to/your/script

Use the chmod +x command followed by the name of your script to give it executable permissions. For example, if your script is named compile_and_run.sh, you would run:

chmod +x compile_and_run.sh

After running this command, your script will have executable permissions, and you can run it by simply typing ./compile_and_run.sh in the terminal.

or

chmod a+x compile_and_run.sh

This command grants execute permission to all users (owner, group, and others) for the script compile_and_run.sh.