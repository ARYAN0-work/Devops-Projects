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

Output:-
-rw-r--r-- 1 aryan aryan   29 Oct 24 10:46 backup.txt
-rw-r--r-- 1 aryan aryan    0 Oct 22 11:29 resource-usage.txt
-rw-r--r-- 1 aryan aryan   29 Oct 24 10:42 system-info.txt

What about -rw-r--r--?

You'll learn permissions in detail later. For now, understand that Linux tracks who can read, write, and execute each file.

Your files have read/write permissions for their owner and read permissions for other users.


# 4: Learn to Read and Search Files

less
head
tail
grep

2. less — Read files page by page

Imagine a log file contains 10,000 lines. Printing everything at once would be inconvenient.

less lets you navigate through a file interactively.

| Key     | Action                         |
| ------- | ------------------------------ |
| `Space` | Move forward one page          |
| `b`     | Move backward one page         |
| `/word` | Search for a word              |
| `n`     | Jump to the next search result |
| `q`     | Quit                           |


3. head — Read the beginning of a file
head commands.md

By default, head displays the first 10 lines.

`````bash
You can specify a different number:

head -n 5 commands.md

This displays the first five lines.

Real-world use: Quickly inspect the beginning of a configuration file or log.
`````

4. tail — Read the end of a file

Run:

tail commands.md

By default, tail displays the last 10 lines.

To display the last three lines:

tail -n 3 commands.md

````bash

A useful Linux server trick
tail -f logs/system.log

The -f option follows the file, displaying new lines as they're appended.

This is useful for watching application logs in real time.

````

5. grep — Search for text

Suppose you want to find every occurrence of Linux in your documentation.

Run:

> grep "Linux" commands.md

grep searches for matching text and prints the lines containing it.

Try a case-insensitive search:

> grep -i "linux" commands.md

The -i option ignores differences between uppercase and lowercase letters.

To display matching lines with their line numbers:

> grep -n "Linux" commands.md => It searches for Linux and displays the line numbers of matching lines.

Real-world use: Search logs for errors, warnings, IP addresses, or specific events.

> grep -in "linux" commands.md
-i ignores case differences: Linux, LINUX, and linux can all match.
-n displays the line numbers.

# Next Lesson: Pipes and Redirection

- Search your log file for errors.
- Count how many errors occurred.
- Save the results to a report.

| Operator | Purpose                                            | Example                        |
| -------- | -------------------------------------------------- | ------------------------------ |
| `>`      | Write output to a file, replacing existing content | `echo "Hello" > test.txt`      |
| `>>`     | Append output to a file                            | `echo "World" >> test.txt`     |
| `\|`     | Pass one command's output to another command       | `cat test.txt \| grep "Hello"` |

# assigments

1. Create a sample log entry.

echo "INFO: System started" > logs/system.log

2. Append another entry.

echo "ERROR: Disk space low" >> logs/system.log

3. Append a third entry.

echo "INFO: Monitoring active" >> logs/system.log

4. Display the log.

cat logs/system.log

# EXTRA

| Log level | Meaning                                                             | Example                                   |
| --------- | ------------------------------------------------------------------- | ----------------------------------------- |
| `DEBUG`   | Detailed information useful for debugging                           | `DEBUG: Checking database connection`     |
| `INFO`    | Something normal or informative happened                            | `INFO: System started`                    |
| `WARN`    | Something unexpected happened; attention may be needed              | `WARN: Memory usage is high`              |
| `ERROR`   | An operation failed or encountered a problem                        | `ERROR: Database connection failed`       |
| `FATAL`   | A critical failure that may prevent the application from continuing | `FATAL: Unable to initialize application` |

Important: These labels are conventions, not special Linux keywords. You could write BANANA in your log, and Linux would still store it as text!

# apply to linux project

> grep -c "ERROR" logs/system.log => The -c option counts the matching lines. => it returns the total no. of file it contains that keyword

## NEXT : PIPES

Imagine you want to:

Read your log.
Find errors.
Count the matching lines.

Linux lets us connect commands using a pipe (|).

> Step 1: Display only errors
grep "ERROR" logs/system.log

> Step 2: Count errors using a pipe
grep "ERROR" logs/system.log | wc -l

| Component      | Meaning                        |                                       |
| -------------- | ------------------------------ | ------------------------------------- |
| `grep "ERROR"` | Finds lines containing `ERROR` |                                       |
| `              | `                              | Passes the output to the next command |
| `wc -l`        | Counts the lines received      |                                       |


**Key concept: The pipe passes one command's output directly to another command as input.**

```````bash
The matching error lines should appear.

Notice the difference:

| passes output to another command.
> writes output to a file, replacing its existing contents.
>> appends output to a file without replacing existing contents.

These are fundamental Linux skills for log analysis and automation.
```````

