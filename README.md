# Bash-ChangeGear

ssh-key switcher for multiple github accounts

## Requirements

* ``sudo apt update``
* ``sudo apt-get install dos2unix``
* ``git clone git@github.com:fightTone/Bash-ChangeGear.git``
* ``sudo apt install lolcat``

## Setup oh-my-posh if you want you can skip this if you dont like

## Steps

1. ``cd Bash-ChangeGear``
2. edit the information of the profiles you want to set in your in change_gear.sh
3. ``dos2unix change_gear.sh``
4. run the ``./copier.sh`` to copy the asciiart to your home folder and the change_gear.sh
5. comment ``cat /home/userX/.ssh/id_rsa.pub`` if you dont want to use it
6. rename your current ssh_private and public key to id_rsa_personal,
7. generate a new key for your other account then rename the private and public to id_rsa_whateverYouWant
   example
   ```
   id_rsa => will now be id_rsa_company_X
   id_rsa.pub => will now be id_rsa_company_X.pub
   ```
   so it will be easier to edit the .sh file

- modify the script in any way you want
- finally you can now run ``./change_gear.sh`` in you home folder or if you prefer to add it in .bashrc, its up to you

## Enter your magic_word

![Screenshot](https://github.com/fightTone/Bash-ChangeGear/blob/main/samples/gearx.jpg)

## Work on Profile 1

![Screenshot](https://github.com/fightTone/Bash-ChangeGear/blob/main/samples/gear01.jpg)

## Switch to Profile 2

![Screenshot](https://github.com/fightTone/Bash-ChangeGear/blob/main/samples/gear2.jpg)
