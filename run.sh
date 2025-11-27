#!/bin/bash

echo "#################################"
echo "Welcome to OS-SETUP!"

cmd="ansible-playbook full.yaml --tags"

options=(
    "Create user" #1
    "Set apt sources"
    "Setup keyboard" #3
    "Install apt packages"
    "Setup steams nvidia dependencies"
    "Configure lightdm" #6
    "Configure pulseaudio"
    "Install/Update Neovim"
    "Setup smb mounts" #9
    "Disable smb mounts"
    "Pull manageRepos"
    "Quit" #12
)
function pulldotfm()
{
    echo "Enter path to clone DotFM to (Default=/gitrepos/OS-SETUP-FINAL): "
    read -r dotfm_path
    dotfm_path=${dotfm_path:-~/gitrepos/os-setup/manageRepos}
    mkdir -p $dotfm_path
    echo "Cloning DotFM"
    git clone https://github.com/DavidJohannesS/manageRepos.git $dotfm_path
}
select opt in "${options[@]}";do
    case $REPLY in
        1) $cmd user ;;
        2) $cmd sources ;;
        3) $cmd keyboard ;;
        4) $cmd apt_install ;;
        5) $cmd steam ;;
        6) $cmd lightdm ;;
        7) $cmd audio ;;
        8) $cmd neovim ;;
        9) $cmd enable_sysd ;;
        10)$cmd disable_sysd ;;
        11) pulldotfm ;;
        12) echo "Exiting..." && break ;;
        *) echo "Invalid" ;;
    esac
done
