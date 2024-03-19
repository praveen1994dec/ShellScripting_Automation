#!/bin/bash

# Function to check if Docker is installed
checkDockerInstalled() {
    if ! command -v docker &>/dev/null; then
        echo "Docker is not installed."
        return 1
    else
        echo "Docker is already installed."
        return 0
    fi
}

# Function to install Docker
installDocker() {
    if ! checkDockerInstalled; then
        echo "##############################################################################################################################"
        echo "Docker is an open platform for developing, shipping, and running applications."
        echo "It enables you to separate your applications from your infrastructure so you can deliver software quickly."
        echo ""
        echo "Please select your operating system/distribution to install Docker:"
        echo "##############################################################################################################################"
        echo ""

        PS3="Select your OS/Distribution: "
        select os_option in \
            "Ubuntu 20.04 or 22.04" \
            "Debian" \
            "CentOS" \
            "Fedora" \
            "Amazon Linux" \
            "OpenSUSE" \
            "Quit"
        do
            case $REPLY in
                1) installDockerUbuntu ;;
                2) installDockerDebian ;;
                3) installDockerCentOS ;;
                4) installDockerFedora ;;
                5) installDockerAmazonLinux ;;
                6) installDockerOpenSUSE ;;
                7) exit ;;
                *) echo "Invalid selection, please try again..." ;;
            esac
        done
    else
        echo "Exiting script as Docker is already installed."
        exit 0
    fi
}

# Function to install Docker on Ubuntu
installDockerUbuntu() {
    clear
    echo "Installing Docker on Ubuntu..."
    sudo apt update
    sudo apt install -y docker.io
    echo "Docker installed successfully!"
    exit 0
}

# Function to install Docker on Debian
installDockerDebian() {
    clear
    echo "Installing Docker on Debian..."
    sudo apt update
    sudo apt install -y docker.io
    echo "Docker installed successfully!"
    exit 0
}

# Function to install Docker on CentOS
installDockerCentOS() {
    clear
    echo "Installing Docker on CentOS..."
    sudo yum install -y docker
    sudo systemctl start docker
    sudo systemctl enable docker        
    echo "Docker installed successfully!"
    exit 0
}

# Function to install Docker on Fedora
installDockerFedora() {
    clear
    echo "Installing Docker on Fedora..."
    sudo dnf install -y docker
    sudo systemctl start docker
    sudo systemctl enable docker
    echo "Docker installed successfully!"
    exit 0
}

# Function to install Docker on Amazon Linux
installDockerAmazonLinux() {
    clear
    echo "Installing Docker on Amazon Linux..."
    sudo yum install -y docker
    sudo systemctl start docker
    sudo systemctl enable docker    
    echo "Docker installed successfully!"
    exit 0
}

# Function to install Docker on OpenSUSE
installDockerOpenSUSE() {
    clear
    echo "Installing Docker on OpenSUSE..."
    sudo zypper install -y docker
    sudo systemctl start docker
    sudo systemctl enable docker    
    echo "Docker installed successfully!"
    exit 0
}

# Call the installDocker function to start the installation process
installDocker
