# Define the base path for the directories
$basePath = "C:\Users\Username\Etc"

# Define the number of directories to create
$numberOfDirs = 5

# Create the directories using a loop
for ($i = 1; $i -le $numberOfDirs; $i++) {
      # Construct the directory name with a number
      $dirName = "Directory_$i"

      # Create the directory at the specified path
      $fullPath = Join-Path -Path $basePath -ChildPath $dirName
      New-Item -ItemType Directory -Path $fullPath | Out-Null
      
      # Display a friendly message
      Write-Host "Created directory: $fullPath"
}
