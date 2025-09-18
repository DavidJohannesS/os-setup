#!/bin/bash

echo "#################################"
echo "Welcome to OS-SETUP!"

cmd="ansible-playbook full.yaml --tags"

options=(
    "Create user"
    "Set apt sources"
    "Install apt packages"
    "Setup steams nvidia dependencies"
    "Configure lightdm"
    "Configure pulseaudio"
    "Install/Update Neovim"
    "Setup smb mounts"
    "Pull DotFM"
    "Quit"
)
function pulldotfm()
{
    echo "Enter path to clone DotFM to (Default=/gitrepos/OS-SETUP-FINAL): "
    read -r dotfm_path
    dotfm_path=${dotfm_path:-/gitrepos/OS-SETUP-FINAL/DotFM}
    mkdir -p $dotfm_path
    echo "Cloning DotFM"
    git clone https://github.com/DavidJohannesS/DotFM.git $dotfm_path
}
select opt in "${options[@]}";do
    case $REPLY in
        1) $cmd user ;;
        2) $cmd sources ;;
        3) $cmd apt_install ;;
        4) $cmd steam ;;
        5) $cmd lightdm ;;
        6) $cmd audio ;;
        7) $cmd neovim ;;
        8) $cmd systemd ;;
        9) pulldotfm ;;
        10) echo "Exiting..." && break ;;
        *) echo "Invalid" ;;
    esac
done
