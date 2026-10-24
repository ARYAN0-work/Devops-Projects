# Commands -1

1. pwd — Print Working Directory.

> Displays the full path of your current directory. | OUTPUT = Displays the full path of your current directory.

2. ls — List Files

> Displays files and directories in your current location.

3. ls -la — List All Files with Details

> Purpose: Displays all files, including hidden ones, with additional information.

Understanding the flags:

-l — Long format: shows permissions, owner, size, and other details.
-a — All: includes hidden files and directories, whose names begin with ..

Your output included:

Entry	         Meaning
.	             Current directory
..	             Parent directory
.git             Git repository metadata

Remember: Hidden files and directories begin with a dot (.). 

4. mkdir — Make Directory

> Creates a new directory named 01-linux-system-monitor.

5. cd — Change Directory

> Moves you into the specified directory.

then i ran by myself :-

````bash
aryan@LAPTOP-JKAF7PUH:~/Devops-Projects$ touch commands.md
aryan@LAPTOP-JKAF7PUH:~/Devops-Projects$ code commands.md
````

# Commands -2

Build the Project Structure

1. Build the Project Structure

Linux concept: You can create multiple directories with a single mkdir command by separating their names with spaces.

| Directory  | Purpose                          |
| ---------- | -------------------------------- |
| `reports/` | Stores generated system reports. |
| `scripts/` | Stores our Bash scripts.         |
| `logs/`    | Stores logs that we'll analyze.  |

# Step 2: Create Your First Project Files

1. Step 2: Create Your First Project Files

touch test.txt

> The touch command creates an empty file if it doesn't exist.

- If the file already exists, touch normally updates its modification timestamp instead of deleting its contents.

3. Create our first project files

touch reports/system-info.txt
touch reports/resource-usage.txt
touch scripts/system-info.sh
touch scripts/system-monitor.sh
touch logs/system.log

| File                 | Purpose                                 |
| -------------------- | --------------------------------------- |
| `system-info.txt`    | Store basic Linux system information    |
| `resource-usage.txt` | Store CPU, memory, and disk information |
| `system-info.sh`     | Script to collect system information    |
| `system-monitor.sh`  | Script to monitor system resources      |
| `system.log`         | Store log entries                       |

New Linux concept: You can create a file inside an existing directory by specifying its path. For example, touch reports/system-info.txt creates the file inside reports.

The parent directory must already exist.

4. Verify your project structure

ls -R

- What does -R mean?

ls = List files and directories.
-R = Recursive — also show the contents of subdirectories.

> It lists files and directories recursively, including the contents of subdirectories.

### Let's understand your output

.:
commands.md  logs  reports  scripts  test.txt

./logs:

./reports:
system-info.txt

./scripts:

````bash
What does each part mean?

1. .:

. means the directory you're currently inside.
: separates the directory name from its contents.

So .: means "Here are the contents of my current directory."

2. ./logs:

. = Current directory.
/ = Path separator.
logs = A directory inside the current directory.

Therefore, ./logs: means "Here are the contents of the logs directory."

3. ./reports:

Same logic. It shows the contents of your reports directory.

4. ./scripts:

It shows the contents of your scripts directory.

What does each part mean?

1. .:

. means the directory you're currently inside.
: separates the directory name from its contents.

So .: means "Here are the contents of my current directory."

2. ./logs:

. = Current directory.
/ = Path separator.
logs = A directory inside the current directory.

Therefore, ./logs: means "Here are the contents of the logs directory."

3. ./reports:

Same logic. It shows the contents of your reports directory.

4. ./scripts:

It shows the contents of your scripts directory.

````

> What the hell is .sh?

A shell script is a file containing Linux commands that you can execute together instead of typing them individually.

For example, imagine you want to run these commands every day:

date
uptime
free -h
df -h

You could save them in a file called system-info.sh and execute that file whenever you need the information.

- Idea-behind it:-

| Extension | Typical purpose               | Example           |
| --------- | ----------------------------- | ----------------- |
| `.txt`    | Store ordinary text           | `system-info.txt` |
| `.sh`     | Store shell commands          | `system-info.sh`  |
| `.log`    | Store log entries             | `system.log`      |
| `.md`     | Store formatted documentation | `commands.md`     |


`````bash
rm test.txt

What does rm mean?

It removes files. Be careful: deleting a file with rm generally doesn't move it to your desktop's recycle bin.

`````

3. Now let's make our first script!

- nano scripts/system-info.sh

Enter these:-

#!/bin/bash

echo "===== Linux System Information ====="
echo ""

echo "Current Date and Time:"
date

echo ""
echo "System Uptime:"
uptime

echo ""
echo "Current User:"
whoami

echo ""
echo "Hostname:"
hostname

# then :-

Save the file

Inside Nano:

- Press Ctrl + O to save.
- Press Enter to confirm the filename.
- Press Ctrl + X to exit.

Run your script

First, give it executable permission:

- chmod +x scripts/system-info.sh

Then execute it:

./scripts/system-info.sh

You should see your system's date, uptime, username, and hostname printed in the terminal.

> SUMMARY:-

| Command                    | Purpose                                   |
| -------------------------- | ----------------------------------------- |
| `nano`                     | Edit a file in the terminal               |
| `echo`                     | Print text                                |
| `date`                     | Display the current date and time         |
| `uptime`                   | Show how long the system has been running |
| `whoami`                   | Display the current username              |
| `hostname`                 | Display the system's hostname             |
| `chmod +x`                 | Add executable permission                 |
| `./scripts/system-info.sh` | Execute the script at that path           |

> One last concept: #!/bin/bash is called a shebang. It tells the operating system to use Bash to interpret the script when you execute it directly.


> is used for comments in shell scripting, but #!/bin/bash has a special purpose. Let's understand the difference.

Execution:

- #!/bin/bash selects the interpreter when the script is executed directly.
- # Display system information is a comment.
- echo prints the message.
- # Show the current user is another comment.
- whoami prints the current username.

# Next Task:-

- ls reports/
- cat reports/system-info.txt
- echo "My first Linux system report" > reports/system-info.txt

```bash

What just happened?

- echo prints the text.
- > redirects that output into a file.
- cat displays the file's contents.

```

- cp — Copy files :- Let's make a backup of our report.

> cp reports/system-info.txt reports/system-info-backup.txt

- mv — Move or rename files :- Linux uses the same command for both operations.

Let's rename our backup:

- mv reports/system-info-backup.txt reports/backup.txt. 

```bash

Remember:

cp creates a copy.
mv moves a file or renames it.
```

> rm — Delete files

end:

ls -la reports/
cat reports/system-info.txt


