# GIMP: Sorrento Installer 💻🖼️

This script helps you install a the GIMP: Sorrento Splash Screen 🐧

## Usage 📝

1. Open a terminal and navigate to the directory containing the `install.sh` script.

2. Make the script executable by running the following command: `chmod +x install.sh`

3.Run the script with your username and the source file path (optional):
`./install.sh <username> [source_file_path]`

Replace `<username>` with your actual username, and `[source_file_path]` with the path to your custom splash screen file (e.g., `my_gimp_files/splash.png`). If you omit the source file path, the script will use the default path `"GIMP: Sorrento/gimp.png"`.

Example: `./install.sh basab`

4. The script will check for the appropriate destination directories (`~/.config/GIMP/2.10/splashes` or `~/.var/app/org.gimp.GIMP/config/GIMP/2.10/splashes`) and copy the specified splash screen file to the first available directory.

5. If the copy is successful, you'll see a message indicating the destination directory where the file was copied. 🎉

6. Launch GIMP, and you should see your custom splash screen! 🖼️

## Notes ℹ️

- Make sure you have the necessary permissions to execute scripts and copy files to the destination directories.
- If you encounter permission issues, try running the script with `sudo`: `sudo ./install.sh <username> [source_file_path]`.
- Double-check the source file path if you're providing a custom path. The file should be in the same directory as the `install.sh` script or provide the full path.

Enjoy your custom GIMP splash screen! 😊