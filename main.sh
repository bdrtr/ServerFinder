#!/usr/bin/bash

BASE_DIR=/usr/local/bin/ServerFinder

source "$BASE_DIR/finder.sh"
source "$BASE_DIR/starter.sh"



function main() {

    result=$(find_server_files)
    starter_main $result


}


main



