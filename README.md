# Bash Scripts

A collection of beginner-friendly Bash scripting projects focused on Linux automation and systems administration tasks.

## 📜 Scripts Included

### 1. 01_create_structure.sh

Creates a project folder structure dynamically using a project name passed as a command-line argument.
The script automatically generates `src`, `docs`, and `tests` directories.

#### How to Run

```bash
./01_create_structure.sh my-project
```

#### Example Output

```bash
Creating project structure for my-project...
Done.
```

#### Concepts Demonstrated

- Shebang (`#!/bin/bash`)
- Using command-line arguments with `$1`
- Variable assignment in Bash
- Input validation with `if` statements
- Checking for empty input using `[ -z "$1" ]`
- Using `echo` for terminal output
- Creating directories with `mkdir -p`
- Brace expansion (`{src,docs,tests}`)
- Quoting variables to prevent word splitting
- Using `exit 1` for error handling

### 2. 02_backup_directory.sh

Backs up a directory to another location with a timestamp appended to the foldername, preventing previous backups from being overwritten.

#### How to Run

```bash
./02_backup_directory ./test_source ./test_backup
```

#### Example Output

```bash
./test_source -> ./test_backups/test_source_20260518_120236/
./test_source/file2.txt -> ./test_backups/test_source_20260518_120236/file2.txt
./test_source/file1.txt -> ./test_backups/test_source_20260518_120236/file1.txt
Success.
```

#### Concepts Demonstrated

- Checking argument count with `$#` and `-ne`
- Checking if a directory exists using `[ ! -d ]`
- Generating a timestamp with `date +"%Y%m%d_%H%M%S"`
- Command substitution with `$(...)`
- Extracting a folder name with `basename`
- String concatenation to build a dynamic path
- Copying directories recursively with `cp -rv`
- Running a command directly in an `if` statement to check success or failure

### 3. 03_service_monitor.sh

Checks if a service is currently running. If not, attempts to restart the service.

#### How to Run

```bash
sudo ./03_service_monitor.sh nginx
```

#### Example Output

```bash
# Service is running
nginx is running.

# Service is down and restarts successfully
nginx is not running. Attempting restart...
nginx restarted successfully.

# Service is down and fails to restart
nginx is not running. Attempting restart...
Failed to restart nginx.
```

#### Concepts Demonstrated

- Checking service status with `systemctl is-active`
- Redirecting output with `> /dev/null 2>&1`
- Nested `if` statements
- Restarting a service with `systemctl restart`

### 4. 04_process_file.sh

Coming next...

