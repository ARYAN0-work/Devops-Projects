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
