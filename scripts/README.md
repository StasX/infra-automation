# scripts Directory

This directory contains Bash script used for **nginx** installation.  
This script simulate service installation and configuration steps for provisioned virtual machines.

## Purpose

- Provide automated service installation
- Support the provisioning workflow triggered by the Python automation tool
- Demonstrate how DevOps uses Bash + Python for hybrid automation
- Produce meaningful logs for troubleshooting

## Installation Script

### `install_service.sh`
A Bash script executed by `infra_simulator.py` to simulate installation and configuration of a basic service.

Typical responsibilities include:

- Checking if a package is already installed  
- Installing the service if missing  
- Logging progress and errors  
- Returning exit codes so Python can detect failures  

#### Example Tasks Inside the Script
- Check if **nginx** installed  
- Install nginx  
- Write installation status to `logs/provisioning.log`

## Integration Flow

1. Python collects and validates VM configuration.
2. Python triggers the installation script:
   ```bash
   subprocess.run(["sudo","-s","bash","scripts/setup_nginx.sh"])
