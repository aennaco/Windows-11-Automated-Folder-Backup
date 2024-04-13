# Windows 11 Automated Backup

Automate your backup process on Windows 11 with this simple and efficient script.

## Overview

This project provides a set of scripts to automate the backup process for specific folders on Windows 11. By using batch (.bat) and VBScript (.vbs) files, you can schedule regular backups of your important data to an external drive or network location.

## Features

- **Automated Backup**: Schedule backups of specific folders to an external drive or network location.
- **Customizable**: Easily customize the source and destination folders for your backup needs.
- **Scheduled Backups**: Use Task Scheduler to automate the backup process at specified intervals.
- **Background Execution**: Run the backup process in the background without interfering with your workflow.
- **Detailed Logging**: Log the backup process to keep track of backup history and any errors encountered.

## How It Works

The Windows 11 Automated Backup project consists of the following components:

1. **0automation_background_process.vbs**: This VBScript runs in the background and serves as the entry point for initiating the backup process. It calls the necessary batch (.bat) files to perform the backups.

2. **OneDrive_backup.bat**: This batch file is responsible for backing up the OneDrive Documents folder. It uses the `xcopy` command to copy new or modified files from the source folder to the destination folder.

3. **Automation_Folder_backup.bat**: Similar to OneDrive_backup.bat, this batch file backs up the Automation Folder to a specified destination.

4. **Dev_Drive_backup.bat**: This batch file backs up the Dev Drive (VHD) to a specified destination.

5. **All_Drives_Backup.bat**: This batch file is a master script that calls all the individual backup scripts (OneDrive_backup.bat, Automation_Folder_backup.bat, Dev_Drive_backup.bat) sequentially. It provides an easy way to trigger all backups at once.


## Getting Started

To get started with the Windows 11 Automated Backup project, follow these steps:

1. Clone or download the project repository to your local machine.
2. Customize the source and destination folders in the provided scripts to match your backup requirements.
3. Set up Task Scheduler to schedule the backup process at desired intervals.
4. Run the scripts manually or let Task Scheduler execute them automatically for scheduled backups.

## Usage

### Prerequisites

- Windows 11 operating system
- External drive or network location for backup storage

### Installation

1. Clone the repository to your local machine:

   ```bash
   git clone https://github.com/aennaco/Windows-11-Automated-Backup.git
   ```

2. Customize the source and destination folders in the provided scripts:
- Modify the source and destination paths in the .bat and .vbs files according to your backup requirements.

## Configuration
- Source Folder: Specify the folder(s) on your Windows 11 system that you want to back up.
- Destination Folder: Specify the location where you want to store the backup files (e.g., external drive, network location).

## Execution
- Manual Execution: Run the provided batch (.bat) and VBScript (.vbs) files manually to initiate the backup process.
- Scheduled Execution: Use Task Scheduler to schedule the batch (.bat) or VBScript (.vbs) files for automatic execution at desired intervals.

 
## Contributing
Contributions to the Windows 11 Automated Backup project are welcome! If you have ideas for improvements, new features, or bug fixes, feel free to open an issue or submit a pull request.

## License
This project is licensed under the MIT License.

## Acknowledgements
- Inspired by the need for a simple and efficient backup solution on Windows 11.
