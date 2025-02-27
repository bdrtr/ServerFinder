#!/bin/bash
function setup() {


    SOURCE_DIR="$(dirname "$(realpath "$0")")"
    INSTALL_DIR="/usr/local/bin/$(basename "$SOURCE_DIR")"
    
    echo $SOURCE_DIR
    echo $INSTALL_DIR

    ALIAS_NAME="allay" #the name
    MAIN_SCRIPT="main.sh" #the script
    SUB_FILES=$(for file in $(ls $SOURCE_DIR); do echo $file; done | grep -v $SCRIPT_NAME) #the sub files

    echo "setting up..."

    sudo mkdir -p $INSTALL_DIR

    sudo cp -r "$SOURCE_DIR"/* "$INSTALL_DIR"
    sudo chmod +x "$INSTALL_DIR/$MAIN_SCRIPT"

    echo "alias $ALIAS_NAME=\"$INSTALL_DIR/$MAIN_SCRIPT\"" >> ~/.bashrc
    source ~/.bashrc


    echo "Kurulum tamamlandı! Artık '$ALIAS_NAME' komutunu her yerden çalıştırabilirsiniz."
    echo "yetki veriliyor..."
    sudo chmod +777 /usr/local/bin/ServerFinder/*
    echo "yetki verildi!"

}

setup