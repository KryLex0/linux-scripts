# linux-scripts

![Shell Script](https://img.shields.io/badge/shell_script-%23121011.svg?style=for-the-badge&logo=gnu-bash&logoColor=white)

## Description

This repository contains scripts that I use to automate some tasks on my Linux machine.

- [linux-scripts](#linux-scripts)
  - [Description](#description)
  - [Usage](#usage)
  - [Scripts](#scripts)
    - [change-terminal](#change-terminal)
    - [check-mem](#check-mem)
    - [cmd-clear](#cmd-clear)
    - [cmd-multipass](#cmd-multipass)
    - [manage-string](#manage-string)
    - [set-context](#set-context)

## Usage

By adding the scripts path to the PATH environment variable in `~/.bashrc`, you can run these scripts from anywhere.

```bash
# ~/.bashrc
export PATH=$PATH:/path/to/linux-scripts
# used to enable tab completion for the scripts set-context
source completion.sh
```

## Scripts


### change-terminal

This script is used to change the default terminal emulator.

```bash
# List all available terminal emulators
change-terminal
```


### check-mem

This script is used to check the memory usage of the system.

```bash
check-mem
```

### cmd-clear

This script is used to clear the system from unused packages and cache. Option `all` also clear docker cache. 

```bash
cmd-clear <option>
```

### cmd-multipass

This script is used to manage multipass instances. You can start, stop, delete, list, upload files and connect to instances.

```bash
cmd-multipass
```

### manage-string

This script is used to manage strings. You can wrtie/remove strings to/from files.

```bash
# Display all options and usage
manage-string

# Write a string to a file
manage-string write 
# or
manage-string write <string> <file>

# Remove a string from a file
manage-string rm
# or
manage-string rm <string> <file>
```

### set-context

This script is used to list all kubernetes contexts and set the current context. It also supports tab completion.

```bash
# List all contexts
set-context

# Set the current context
set-context <context-name>
```

