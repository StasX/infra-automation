# Source Directory

This directory contains all Python source code for the Infrastructure Provisioning & Automation Simulator.  
It is the core of the application and manages user interaction, validation, logging, and the provisioning workflow.

## Purpose

- Store all Python modules used by the provisioning tool  
- Contain the main simulator logic  
- Provide a modular, object-oriented code structure  
- Allow future expansion into real cloud provisioning (AWS, Terraform integrations)

## Files

### `__init__.py`
Marks the **src/** directory as a Python package.

### `file_utils.py`
Utility module that handles reading and writing VM configuration files.

**Responsibilities include**
- Load existing machine configurations from `configs/instances.json`
- Ask the user whether to append new machines to the existing file
- Return previously saved configurations if the user chooses "Y"
- Write updated configuration data back to a specified JSON file

**Notes**
- Keeps file I/O logic separate from main logic in `infra_simulator.py`  
- Ensures clean and modular project structure  
- File paths are resolved dynamically using `os.path`  

### `infra_simulator.py`
Main Python script that runs the provisioning simulator.

- Prompts the user for machine details (name, OS, CPU, RAM)
- Validates user input using schema validation with Pydantic
- Creates `Machine` objects and stores them in a list
- Saves all machine configurations into `configs/instances.json`
- Calls Bash installation scripts using `subprocess`
- Logs all provisioning steps and errors to `logs/provisioning.log`
- Handles append vs overwrite modes when saving configurations

### `machine.py`
Defines the **Machine** class used to represent a virtual machine.

Responsibilities include:
- Storing VM attributes (name, OS, CPU, RAM)
- Providing a dictionary representation for JSON saving
- Logging machine creation events
- Serving as the foundation for more advanced provisioning logic later

### `resources.py`
Defines the available system resources and constraints for virtual machines.

**Purpose**
- Provide predefined limits and allowed values used for validation
- Centralize resource definitions so they can be updated in one place

**Contents**
- `os`  
  - A list of supported operating systems  
    ```python
    ["Linux", "Windows"]
    ```
- `cpu`  
  - Maximum number of CPUs a machine can have  
    ```python
    cpu = 8
    ```
- `ram`  
  - Maximum RAM capacity (in GiB) a machine can be assigned  
    ```python
    ram = 192
    ```

**Usage**
- Imported by `infra_simulator.py` to validate user input  
- Ensures consistent constraints across the entire provisioning system  