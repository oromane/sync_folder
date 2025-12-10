$SourceFile = "C:\Users\source_file/folder" 
$TargetFile = "C:\Users\target_file/folder"

$folder = Split-Path $SourceFile
$file = Split-Path $SourceFile -Leaf

$watcher = New-Object System.IO.FileSystemWatcher
$watcher.Path = $folder
$watcher.Filter = $file
$watcher.NotifyFilter = [System.IO.NotifyFilters]'LastWrite'

$action = {
    Copy-Item $Event.SourceEventArgs.FullPath $using:TargetFile -Force
    Write-Host "Synchro effectuée : $(Get-Date)"
}

Register-ObjectEvent $watcher Changed -Action $action

Write-Host "Sync active. Laisse cette fenêtre ouverte."
while ($true) { Start-Sleep 1 }
