# DevOps Infrastructure Provisioning & Configuration Automation Project

## Project Overview & Objectives
This project provides a foundational simulation of infrastructure provisioning and installation using Python and Bash.  
It is designed as an initial stage of a larger DevOps automation system that will later integrate real cloud resources (AWS, Terraform) once those tools are introduced.

The objectives of the project are:
- Collect and validate user-defined virtual machine configurations  
- Use a modular, class-based Python structure  
- Save configuration data into JSON files  
- Execute Bash scripts to simulate service installation  
- Implement logging and error handling across both Python and Bash

## Setup & Execution Instructions

### 1. Project Setup
1. Clone the repository  
2. Create and activate a Python virtual environment  
3. Install required Python dependencies

### 2. Running the Provisioning Simulator
1. Run the main Python script `infra_simulator.py`
2. Follow the prompts to enter virtual machine definitions  
3. Type `y` when finished  
4. The script will:  
   - Validate the input  
   - Save the configuration file  
   - Log provisioning and installation steps  
   - Execute the Bash script to simulate service installation  

## Example Expected Output
```
Enter machine name:
Enter OS (e.g., Linux / Windows):
Enter number of CPU's (Any integer value up to 8): 
Enter RAM capacity in GiB : 
Add another Machine?
Press Y for yes:
[Do you want to add new configuration to old configuration? for yes press Y: ]

Configuration saved to configs/instances.json
Provisioning started...
Provisioning completed successfully.
Running service setup script...
Service installation completed.
Logs written to logs/provisioning.log
```