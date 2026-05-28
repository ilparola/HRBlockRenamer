# Headrush Block Renamer – Community Edition

A lightweight utility for renaming Headrush `.block` files into readable and recognizable real-world amplifier and cabinet names.

This project includes:

* A **Bash script** for Linux/macOS
* A **PowerShell script** for Windows

The scripts automatically rename Headrush amp and cabinet block files using predefined mappings.

---

# Features

* Automatically renames `.block` files
* Supports:

  * Headrush Amp blocks
  * Headrush Cab blocks
  * Revalver Amp blocks
  * Revalver Cab blocks
* Case-insensitive file matching
* Clean console output with rename status
* Community-maintained naming database
* No external dependencies required

---

# Included Scripts

| Script           | Platform           |
| ---------------- | ------------------ |
| `amp_rename.sh`  | Linux / macOS      |
| `amp_rename.ps1` | Windows PowerShell |

---

# Important Information

This script must be executed directly from the `Blocks` folder of your Headrush device.

Compatible devices:

* Headrush Core
* Headrush Prime
* Headrush Flex Prime

The purpose of this project is to replace the original Headrush "fictional" amp and cabinet names with the real amplifier and cabinet models they are based on.

---

# How It Works

The scripts search for `.block` files using their original Headrush prefixes and rename them to descriptive amplifier or cabinet names.

Example:

```text
+65 J45.block
```

becomes:

```text
Marshall JTM45.block
```

---

# Backup Warning

Before running the script, it is **strongly recommended** to create a full backup of your `Blocks` folder.

The scripts rename files directly and changes cannot be automatically reverted.

---

# Important Notes

* Do **NOT** attempt to rename pedal effects manually.
* Pedal effects are not composed of a single `.block` file and may stop working correctly if modified.
* The scripts are intended only for:

  * Amp blocks
  * Cab blocks
  * Revalver Amp blocks
  * Revalver Cab blocks

---

# Usage

## Linux / macOS

In some cases macOS may quarantine the downloaded script.

If needed, remove the quarantine attribute with:

```bash
xattr -d com.apple.quarantine amp_rename.sh
```

Make the script executable:

```bash
chmod +x amp_rename.sh
```

Run the script:

```bash
./amp_rename.sh
```

---

## Windows PowerShell

Open PowerShell inside the project directory and run:

```powershell
./amp_rename.ps1
```

If script execution is disabled:

```powershell
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
```

Then run the script again.

---

# Example Output

```text
[OK] Folder 'Amp': '+65 J45.block' -> 'Marshall JTM45.block'
```

---

# Supported Categories

## Headrush Standard

* Amp
* Cab

## Revalver

* Amp
* Cab

---

# Notes

* Existing files with the same target name may overwrite or be skipped depending on the platform and filesystem behavior.
* The scripts only process `.block` files.
* Folder names must match exactly:

  * `Amp`
  * `Cab`
  * `Revalver Amp`
  * `Revalver Cab`

---

# Customization

You can add your own mappings directly inside the scripts.

Example:

## Bash

```bash
rename_file "$D" "+Original Name" "Custom Display Name"
```

## PowerShell

```powershell
Rename-HeadrushFile "Amp" "+Original Name" "Custom Display Name"
```

---

# Compatibility

| OS      | Supported |
| ------- | --------- |
| Windows | Yes       |
| Linux   | Yes       |
| macOS   | Yes       |

---

# Disclaimer

This project is community-made and is not affiliated with or endorsed by Headrush, Peavey, or any amplifier manufacturer mentioned in the rename mappings.

All product names and trademarks belong to their respective owners.

---

# License

Feel free to use, modify, and distribute this project.

Community Edition.
