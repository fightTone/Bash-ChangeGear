
#===================================================================================================
# Description: A script to change the git profile and ssh key
#===================================================================================================
# Change/Edit the following variables according to your need
priv_key="/home/userX/.ssh/id_rsa"
pub_key="/home/userX/.ssh/id_rsa.pub"

gear1_name = "JARVIS"
gear1_art="~/asciiart/power_ranger.txt"
gear1_path="/home/userX/my/ssh/private/key/path/id_rsa_comapnyName"
gear1_email="user@github_email.com"
gear1_user="git_username"
gear1_msg1="Let's Go Master!!!"
gear1_msg2="Console: Hello $gear1_user, You are now in \"Power Ranger\" mode"

gear2_name = "BinBounty"
gear2_art="~/asciiart/pikachu.txt"
gear2_path="/home/userX/my/ssh/private/key/path/id_rsa_personal"
gear2_email="user2@samplemail.com"
gear2_user="git_username2"
gear2_msg1="Gotta catch 'em all !!!"
gear2_msg2="Console: Hello $gear1_user, You are now in \"Pokémon Master\" mode"
#==================== END OF EDITABLE PART ========================================================

read -p "what's the magic word: " input
if [[ "$input" == "gogopowerranger" ]]; then
    cat $gear1_art | lolcat
    echo $gear1_msg1
    cp $gear1_path $priv_key
    cp "$gear1_path".pub $pub_key
    git config --global user.email $gear1_email
    git config --global user.name $gear1_user
    echo $gear1_msg2 | lolcat
    eval "$(oh-my-posh init bash --config /home/linuxbrew/.linuxbrew/Cellar/oh-my-posh/19.28.0/themes/night-owl.omp.json)"
elif [[ "$input" == "gogopikachu" ]]; then
    cat $gear2_art | lolcat
    echo $gear2_msg1
    cp $gear2_path $priv_key
    cp "$gear2_path".pub $pub_key
    git config --global user.email $gear2_email
    git config --global user.name $gear2_user
    echo $gear2_msg2 | lolcat
    eval "$(oh-my-posh init bash --config /home/linuxbrew/.linuxbrew/Cellar/oh-my-posh/19.28.0/themes/poshmon.omp.json)"
else
    rm -r $priv_key
    rm -r $pub_key
    echo "Console: Welcome Pathetic Guest!" | lolcat
fi

# Check if any .pub file exists
if [ -f $pub_key ]; then
    cat /home/userX/.ssh/id_rsa.pub
    if [[ "$(cat $gear1_path.pub)" == "$(cat $pub_key)" ]]; then
        echo "<<< current_profile: $gear1_name >>>"
    elif [[ "$(cat $gear2_path.pub)" == "$(cat $pub_key)" ]]; then
        echo "<<< current_profile: $gear2_name >>>"
    fi | lolcat
else
    echo "<<< -UNKNOWN- >>>" | lolcat
fi
#===================================================================================================
# End of Appended change_gear.sh Script
#===================================================================================================