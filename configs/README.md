# Configs Directory

This directory stores all configuration files will used by the Infrastructure Provisioning & Automation.  
These files store VM definitions collected from user input during the provisioning process.

## Purpose

- Hold machine configuration data in JSON format  
- Serve as the input source for the provisioning simulator  
- Allow the tool to append or overwrite VM definitions  
- Provide a structured, version-controlled location for configuration files

## Configuration File

### `instances.json`
This file is automatically created and updated by the `infra_simulator.py` script.  
It stores a list of virtual machine objects, each containing validated fields such as:

- **name** – VM name  
- **os** – Operating system (e.g., Linux, Windows)  
- **cpu** – Number of CPU cores  
- **ram** – RAM capacity in GiB  

#### Example Format
```json
[
    {
        "name": "web-server-1",
        "os": "Linux",
        "cpu": 4,
        "ram": 8
    }
]