# Description: A script to change the git profile and ssh key in PowerShell

# Change/Edit the following variables according to your need
$default_path = "$env:USERPROFILE\.ssh\id_rsa"
$priv_key = "$default_path"
$pub_key = "$default_path.pub"

$gear1_name = "Microwave"
$gear1_art = "$env:USERPROFILE\asciiart\pokemon1.txt"
$gear1_path = "$env:USERPROFILE\.ssh\id_rsa_microwave"
$gear1_email = "joshua@microwave.com"
$gear1_user = "joshua"
$gear1_msg1 = "Let's Go Master!!!"
$gear1_msg2 = "Console: Hello $gear1_user, You are now in `"`Power Ranger`" mode"

$gear2_name = "Giggles"
$gear2_art = "$env:USERPROFILE\asciiart\pikachu.txt"
$gear2_path = "$env:USERPROFILE\.ssh\id_rsa_personal"
$gear2_email = "joma@goma.com"
$gear2_user = "joma"
$gear2_msg1 = "Gotta catch 'em all !!!"
$gear2_msg2 = "Console: Hello $gear2_user, You are now in `"`Pokémon Master`" mode"

# Prompt for input
$input = Read-Host "what's the magic word"

if ($input -eq "gogopowerranger") {
    cat $gear1_art
    Write-Host $gear1_msg1
    Copy-Item $gear1_path $priv_key
    Copy-Item "$gear1_path.pub" $pub_key
    git config --global user.email $gear1_email
    git config --global user.name $gear1_user
    Write-Host $gear1_msg2
    # PowerShell equivalent of eval is Invoke-Expression, but be cautious using it
    # Invoke-Expression "$(oh-my-posh init pwsh)"
} elseif ($input -eq "gogopikachu") {
    cat $gear2_art
    Write-Host $gear2_msg1
    Copy-Item $gear2_path $priv_key
    Copy-Item "$gear2_path.pub" $pub_key
    git config --global user.email $gear2_email
    git config --global user.name $gear2_user
    Write-Host $gear2_msg2
    # Invoke-Expression "$(oh-my-posh init pwsh)"
} else {
    Remove-Item $priv_key -Force
    Remove-Item $pub_key -Force
    Write-Host "Console: Welcome Pathetic Guest!"
}