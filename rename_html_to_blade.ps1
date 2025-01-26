param (
    [string]$directory
)

# Check if directory is provided
if (-not $directory) {
    Write-Host "Usage: rename_html_to_blade.ps1 <directory>"
    exit
}

# Change to the specified directory
Set-Location -Path $directory

# Get all .html files and rename them
Get-ChildItem -Filter *.html | ForEach-Object {
    $newName = $_.Name.Replace('.html', '.blade.php')
    Rename-Item $_ -NewName $newName
    Write-Host "Renamed: $($_.Name) to $newName"
}

Write-Host "Renaming complete!"
