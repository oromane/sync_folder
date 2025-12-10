# 🔄 Automatic File Sync with PowerShell

This project provides a **PowerShell script** that automatically synchronizes a specific file between a source folder and a target folder in real time using the .NET `FileSystemWatcher` object. Ideal for local development environments like XAMPP.

---

## 📌 Features

* **Real-time monitoring** of a specific file.
* **Automatic synchronization** to the target folder whenever changes are detected.
* **Minimal logging** displaying the time of each sync.
* **Forced copy** to overwrite the target file without confirmation.
* **Persistent loop** keeps the watcher active as long as the PowerShell window remains open.

---

## ⚙️ Installation

1. Clone this repository:

```bash
git clone <REPO_URL>
```

2. Update the script paths to match your source and target directories:

```powershell
$SourceFile = "C:\path\to\source\file"
$TargetFile = "C:\path\to\target\file"
```

---

## ▶️ Usage

1. Open **PowerShell**.
2. Navigate to the folder containing the script.
3. Run the script:

```powershell
.\sync-file.ps1
```

4. Keep the window open to maintain active monitoring.
5. Each time the source file is modified, it will be automatically copied to the target folder, with a timestamped message displayed:

```
Sync completed: 12/10/2025 18:00:12
```

---

## 🛠️ Customization

* **Multiple files**: Extend the script with multiple `FileSystemWatcher` objects.
* **Event types**: Monitor `Changed`, `Created`, `Deleted`, `Renamed`.
* **Advanced logging**: Add a log file to track all synchronizations.

---

## ⚠️ Notes

* The script requires **PowerShell to remain open** to function.
* By default, it monitors **one specific file**. For entire folders, adjust the filter accordingly.
* Intended for **development workflows** or local testing, not production-critical systems.

---

## 🧩 Example Use Cases

* Automatically sync an HTML or PHP file from your local project to the XAMPP server when edited.
* Keep a configuration file mirrored between two working directories for quick testing.
