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

Coming next...