# Rename `.html` Files to `.blade.php` - PowerShell Script

This PowerShell script is designed to batch rename all `.html` files in a specified directory to `.blade.php` files. It's useful for Laravel projects where you want to convert `.html` templates into `.blade.php` templates.

## Features

- Renames all `.html` files in a specified directory.
- Changes the file extension from `.html` to `.blade.php`.
- Outputs the renaming actions to the console.

## Requirements

- PowerShell 3.0 or later.
- The script must be run with the necessary permissions to rename files in the target directory.

## Usage

1. **Download the script**: Save the PowerShell script as `rename_html_to_blade.ps1`.

2. **Run the script**:
   Open PowerShell and navigate to the folder containing the script. Then run the script with the path to the directory where your `.html` files are stored.

   ### Example:

   ```powershell
   .\rename_html_to_blade.ps1 "C:\path\to\your\directory"
   ```

   - Replace `"C:\path\to\your\directory"` with the actual path to your folder.
   - The script will process all `.html` files in the specified directory and rename them to `.blade.php`.

3. **Script Output**:
   - The script will display the renaming progress for each file in the console, like so:
     ```
     Renamed: index.html to index.blade.php
     Renamed: about.html to about.blade.php
     ```
   - After completion, it will print:
     ```
     Renaming complete!
     ```

## Requirements for Running the Script

You may need to enable script execution on your system if it is disabled by default. To allow script execution, follow these steps:

1. Open PowerShell as an administrator.
2. Run the following command:
   ```powershell
   Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
   ```

This command allows locally-created scripts to be run on your system.

## Troubleshooting

### Error: `The script cannot be run because scripting is disabled on this system.`
If you see this error, follow the instructions above to change the execution policy.

### Error: `Access denied`
Ensure that you have the appropriate permissions to rename files in the specified directory.

---

### License

This script is provided as-is and can be freely used and modified under the [MIT License](https://opensource.org/licenses/MIT).

