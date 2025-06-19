
# Shell Scripting

Text files containing commands to execute by a shell are called shell scripts. In this, long and repetitive series of commands are compiled into a single script that can be stored and executed at any time, thereby reducing programming efforts. In shell scripts, repetitive work is largely avoided. The most common reason for using shell scripting is to program operating systems of Windows, UNIX, Apple, etc. In addition, companies use this script to develop an operating system with their own features. In terms of system-level operations, it is considered to be the easiest programming language to use. A shell script is referred to as a batch file in DOS operating system, and EXEC in IBM's mainframe VM operating systems. Shell scripts can be used for the following applications:

* Automation of the code compiling process.
* Run a program or create an environment for programming.
* Complete batch processing and file manipulation.
* Integrate existing programs.
* Perform routine backups.
* Keeping an eye on a system.
* System administration's tasks
* Creating, maintaining, and implementing system boot scripts

**A sample shell script:**

```bash
echo "hello world"
```

**Run it as follows:**

```bash
$ bash hello.sh
# prints 
hello world
```

---

## Why is a shell script needed?

Shell scripts can be written for a variety of reasons:

* Keeping repetitive tasks to a minimum.
* Can be used by system administrators for routine backups.
* Monitoring the system.
* Adding new functions to the shell.
* Shell scripting allows you to create your own tools.
* System admin can automate daily tasks

---

## What is the use of the `$?` command?

By using the command `$?`, you can find out the status of the last command executed.

---

## How to check whether a link is a hard one or a soft link?

We can use `-h` and `-L` operators of the test command to check whether a link is hard or soft (symbolic link).

* `-h file`  // true if the file is a symbolic link
* `-L file`  // true if the file is a symbolic link

---

## Write some advantages of shell scripting.

Shell scripting offers the following benefits:

* An interactive debugging tool, as well as a quick start.  
* Programmers need not change their syntax since both command and syntax are identical to those entered directly into the command line.  
* Shell scripts are easy to use and quicker to write.  
* It helps automate administrative tasks, so it is time-saving.  
* As shell scripts are written in an interpreted language, they can be run without any additional effort on almost any modern operating system, including UNIX, Linux, BSD, and Mac OS X.  
* They can be utilized for bulk execution rather than single instructions.  
* Using it, you can develop your own custom operating system with relevant features.  
* Software applications can be developed according to their respective platforms with this tool.

---

## Write some limitations of shell scripting.

Shell scripting has the following disadvantages:

* Errors are frequent and costly, and a single error can alter the command.  
* The execution speed is slow. 
* Bugs or inadequacies in the language's syntax or implementation.  
* Large, complex tasks aren't well suited to it.  
* Contrary to other scripting languages, etc., it provides a minimal data structure.  
* Every time a shell command is executed, a new process is launched.

---

## Name the file in which shell programs are stored.

A file called `.sh` stores shell programs. `.sh` files contain commands written in a scripting language that is run by Unix shells.

---

## Name different types of shells available.

* Shells are divided into two categories:

  * **Bourne shell:** The `$` character is the default prompt when using a Bourne-type shell.
  * **C shell:** The `%` character is the default prompt when using a C-type shell.

The Bourne-type is subdivided into the following categories:

* **Bourne Again shell (BASH):** This is the most common shell available on all Linux and based systems. It is open-source and freeware. In addition, it is an SH-compatible shell, with improved programming and interactive features over SH. It also allows you to efficiently perform many tasks.
* **Korn shell (KSH):** Korn is basically a Unix shell that was initially based on the Bash Shell Scripting. It's a high-level language that's quite advanced. It has associative arrays and handles the loop syntax better than Bash. It is basically an improved version of Bourne shell.

The C-type is subdivided into the following categories:  

* **C shell (CSH):** C shell is almost like C itself since it uses the shell syntax of the C programming language. In most cases, a command is executed either interactively from a terminal keyboard or from a file.
* **TENEX/TOPS C shell (TCSH):** TCSH does not have a specific full name. TCSH is considered as an enhanced version of the CSH as it includes some additional features over CSH like command-line editing and filename or command completion. As with the previous version, it supports C-style syntax also.

---

## Write difference between Bourne Shell and C Shell.

* **Bourne Shell:** It has compactness and speed that set it apart from other shells. But it lacks interactive features such as the ability to recall previous commands. Additionally, the Bourne shell does not support arithmetic and logical expressions.
* **C Shell:** It is a UNIX enhancement that incorporates interactive features like aliases and history of commands. Besides its built-in arithmetic and expression syntax, it also includes convenient programming features.

---

## What is the shebang line?

Shell scripts or programs often contain shebang at the top. In general, the Shebang (the series of characters `#!`) is used to indicate the operating system to use a particular interpreter to process the rest of the file. Here, the symbol `#` is referred to as hash, and `!` is referred to as bang. This usually aids developers in avoiding repetitive work. Scripts are generally executed by the engine; therefore, shebang determines the location of the engine that will be used to run the script.

**Example:**

```bash
#!/bin/bash
```

---

## Write the command that is used to execute a shell script file

Use the `chmod` command to set execute permission on your script as shown below:

```bash
chmod +x script-name-here.sh
```

Secondly, run or execute your script as follows:

```bash
./script-name-here.sh
```

Alternatively, you can execute shell script by:

```bash
sh script-name-here.sh
```

---

## Difference between sh, bash, dash, and zsh.

| Shell    | Full Name             | Features                                                           | Speed    | Compatibility           | Default on         |
| -------- | --------------------- | ------------------------------------------------------------------ | -------- | ----------------------- | ------------------ |
| **sh**   | Bourne Shell          | Basic POSIX-compliant shell. Minimal scripting features.           | Moderate | POSIX                   | Unix systems       |
| **bash** | Bourne Again Shell    | Enhanced version of sh. Rich features like arrays, functions, etc. | Slower   | POSIX + Bash extensions | Most Linux distros |
| **dash** | Debian Almquist Shell | Lightweight POSIX shell. Faster, but lacks many bash features.     | Fastest  | Strict POSIX            | Ubuntu /bin/sh     |
| **zsh**  | Z Shell               | Feature-rich shell with themes, plugins, auto-suggestions, etc.    | Slower   | POSIX + Zsh extensions  | macOS, Power users |

---

## Difference between `#!/bin/sh` and `#!/bin/dash`.

| Shebang Line  | Meaning & Behavior                                                                                   |
| ------------- | ---------------------------------------------------------------------------------------------------- |
| `#!/bin/sh`   | Points to the default system shell. On modern Linux (like Ubuntu), it's often linked to `/bin/dash`. |
| `#!/bin/dash` | Explicitly uses dash, a fast, POSIX-compliant shell with limited features (no arrays, etc.).         |

✅ **Tip:** Use `#!/bin/bash` if your script relies on Bash-specific features like arrays, `[[ ]]` conditions, or string manipulation.

---

## Shell Script Debugging with `set` Commands

| Command           | Description                                                                   |
| ----------------- | ----------------------------------------------------------------------------- |
| `set -x`          | Prints each command and its arguments as they are executed (execution trace). |
| `set -v`          | Displays each line of the script before executing it (verbose mode).          |
| `set -e`          | Exits the script immediately if any command returns a non-zero exit status.   |
| `set -u`          | Treats unset variables as an error and exits immediately.                     |
| `set -o pipefail` | The script fails if any command in a pipeline fails.                          |
| `set +x`          | Turns off execution tracing.                                                  |
| `set +v`          | Turns off verbose mode.                                                       |
| `set +e`          | Disables exit on error.                                                       |
| `set +u`          | Disables error on unset variables.                                            |
| `set +o pipefail` | Disables pipefail mode.                                                       |

**Example:**

```bash
#!/bin/bash
set -xeuo pipefail

echo "Start script"
some_undefined_command
echo "This won't be printed if an error occurs above"
```


## ⚙️ Widely Used Shell Scripts for Daily DevOps Tasks

Below are a few simple yet powerful shell script examples that DevOps engineers often use in daily operations:

---

### 1️⃣ **Check Disk Usage and Send Alert**

```bash
#!/bin/bash

THRESHOLD=80

USAGE=$(df / | grep / | awk '{ print $5 }' | sed 's/%//g')

if [ "$USAGE" -gt "$THRESHOLD" ]; then
  echo "Disk usage is above $THRESHOLD%. Current usage: $USAGE%."
  # You can add mail or Slack notification here
fi
```

---

### 2️⃣ **Automated Backup of a Directory**

```bash
#!/bin/bash

SOURCE_DIR="/var/www/html"
BACKUP_DIR="/backup/$(date +%F)"

mkdir -p "$BACKUP_DIR"
cp -r "$SOURCE_DIR" "$BACKUP_DIR"

echo "Backup of $SOURCE_DIR completed at $BACKUP_DIR."
```

---

### 3️⃣ **Restart a Service if It’s Down**

```bash
#!/bin/bash

SERVICE="nginx"

if ! pgrep -x "$SERVICE" > /dev/null
then
  echo "$SERVICE is not running. Restarting..."
  systemctl start $SERVICE
else
  echo "$SERVICE is running."
fi
```

---

### 4️⃣ **Clean Up Old Log Files**

```bash
#!/bin/bash

LOG_DIR="/var/log"
DAYS=30

find $LOG_DIR -name "*.log" -type f -mtime +$DAYS -exec rm -f {} \;

echo "Old log files older than $DAYS days deleted from $LOG_DIR."
```

---

### 5️⃣ **Monitor CPU Usage**

```bash
#!/bin/bash

CPU=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')
THRESHOLD=80

if (( $(echo "$CPU > $THRESHOLD" | bc -l) )); then
  echo "High CPU load: $CPU%"
  # Send alert or perform scaling actions
else
  echo "CPU load is normal: $CPU%"
fi
```

---

## ✅ **How to Use**

1. Save each script to a `.sh` file (e.g., `check_disk.sh`).
2. Make it executable:

   ```bash
   chmod +x check_disk.sh
   ```
3. Run it:

   ```bash
   ./check_disk.sh
   ```

