#!/bin/bash

echo "Welcome to the Bash Terminal User Interface (TUI)"
echo "Select your distro to install importent software then select 7 to install zsh:"

while true
do
    echo ""
    echo "1) Debian/Debian based"
    echo "2) Raspberry Pi"
    echo "3) RHEL/RHEL based AMD64"
    echo "4) RHEL/RHEL based AARCH64"
    echo "5) Arch/Arch based"
    echo "6) Install zsh and zshrc"
    echo "7) Exit"
    read -p "Enter your choice (1-7): " choice

    if [ $choice -eq 1 ]; then
        curl https://git.archuser.org/firebadnofire/pzsh/raw/branch/main/apt-fast.sh | bash; curl -o ~/aptf https://git.archuser.org/firebadnofire/pzsh/raw/branch/main/aptf; sudo mv ~/aptf /etc/apt-fast.conf; sudo apt-fast install -y zsh curl git fzy
    elif [ $choice -eq 2 ]; then
        curl https://git.archuser.org/firebadnofire/pzsh/raw/branch/main/argon1.sh | bash
    elif [ $choice -eq 3 ]; then
	sudo dnf install zsh git; wget https://ftp.lysator.liu.se/pub/opensuse/tumbleweed/repo/oss/x86_64/fzy-1.0-1.17.x86_64.rpm; wget https://download-ib01.fedoraproject.org/pub/epel/9/Everything/x86_64/Packages/c/catimg-2.7.0-4.el9.x86_64.rpm; wget https://download-ib01.fedoraproject.org/pub/epel/9/Everything/x86_64/Packages/n/neofetch-7.1.0-7.el9.noarch.rpm; wget https://download-ib01.fedoraproject.org/pub/epel/9/Everything/x86_64/Packages/s/screen-4.8.0-6.el9.x86_64.rpm; sudo dnf install ./*.rpm
    elif [ $choice -eq 4 ]; then
	sudo dnf install zsh git; wget https://ftp.lysator.liu.se/pub/opensuse/ports/aarch64/tumbleweed/repo/oss/aarch64/fzy-1.0-1.15.aarch64.rpm; wget https://download-ib01.fedoraproject.org/pub/epel/9/Everything/aarch64/Packages/n/neofetch-7.1.0-7.el9.noarch.rpm; wget https://download-ib01.fedoraproject.org/pub/epel/9/Everything/aarch64/Packages/c/catimg-2.7.0-4.el9.aarch64.rpm; wget https://download-ib01.fedoraproject.org/pub/epel/9/Everything/aarch64/Packages/s/screen-4.8.0-6.el9.aarch64.rpm; sudo dnf install ./*.rpm
    elif [ $choice -eq 5 ]; then
        sudo pacman -S --needed zsh curl git fzy
    elif [ $choice -eq 6 ]; then
	sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
curl -o .cow https://git.archuser.org/firebadnofire/pzsh/raw/branch/main/cow
rm ~/.zshrc
curl -o .zshrc https://git.archuser.org/firebadnofire/pzsh/raw/branch/main/zshrc
cd ~/.oh-my-zsh/custom/plugins
git clone https://github.com/tom-auger/cmdtime

echo "remember to install rpms if downloaded"
    elif [ $choice -eq 7 ]; then
        exit
    else
        echo "Invalid selection"
    fi
    echo ""
done
