# Java Permissions Checker

This repository provides two Bash scripts to help developers manage permissions in their Java projects:

- `find_permissions.sh`: Searches for permissions in Java source files within a given directory.
- `check_missing_permissions.sh`: Compares permissions found in Java source files with those in a `plugin.yml` file and reports any missing permissions.

## Prerequisites

- Bash (available on Linux and macOS by default, or you can use Git Bash on Windows)

## Usage

### find_permissions.sh

This script finds all unique permissions in the Java source files within a specified directory.

```bash
./find_permissions.sh /path/to/your/directory
```

The script will output a list of unique permissions found in the Java files.

### check_missing_permissions.sh
This script checks if the permissions found by the `find_permissions.sh` script are present in a `plugin.yml` file and reports any missing permissions.

```bash
./check_missing_permissions.sh /path/to/your/directory /path/to/your/plugin.yml
```
The script will output a list of missing permissions that are present in the Java source files but not in the `plugin.yml` file.

## Example

Suppose you have a project with the following structure:

```
my_project/
  |- src/
  |  |- main/
  |     |- java/
  |        |- ...
  |- plugin.yml
  |- find_permissions.sh
  |- check_missing_permissions.sh
```

First, run the `find_permissions.sh` script to find all unique permissions in your Java source files:
```bash
./find_permissions.sh src/main/java
```

Then, run the `check_missing_permissions.sh` script to compare the found permissions with those in the `plugin.yml` file:

```
./check_missing_permissions.sh src/main/java plugin.yml
```
The script will output a list of missing permissions that you may need to add to your plugin.yml file.

##Contributing

If you'd like to contribute, please feel free to submit a pull request or open an issue to discuss any proposed changes or improvements.
