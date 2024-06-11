# # Just comment/uncomment the following lines if you want to append the script to your profile or run it in the home directory
# Copy-Item -Recurse asciiart -Destination "$env:USERPROFILE\asciiart"
# # Add-Content -Path "$env:USERPROFILE\.bashrc" -Value (Get-Content -Path change_gear.sh)
# Copy-Item change_gear.sh -Destination $env:USERPROFILE
# Write-Host "Copied asciiart to $env:USERPROFILE\asciiart"
# Write-Host "Appended change_gear.sh to .bashrc"
cp -r asciiart ~/asciiart
cp change_gear.ps1 ~/