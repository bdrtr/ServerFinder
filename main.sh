#!/usr/bin/bash

source finder.sh
source starter.sh



function main() {

    result=$(find_server_files)
    starter_main $result


}


main



