#!/usr/bin/bash

function find_server_files() {

    running_jar=$(ps aux | grep '[j]ava' | grep 'paper\|spigot' | awk '{print $(NF-1)}')
    if [[ $running_jar ]]; then 
        gum log --structured --level info "running jar file is found"
        continue
    else
        gum log --structured --level info "running jar file is not found"
        gum confirm  "Do you want to manual search for the jar file?" || server_jar=""
        
    fi


    server_jar=$(find ~/ -type f \( -name "paper*.jar" -o -name "spigot*.jar" \))

    if [[ ${server_jar[@]} -eq 0 ]]; then 
        gum log --structured --level info "jar file not found"
        server_jar=$(gum file $HOME)

    else
        gum log --structured --level info "jar file found"
        gum choose --header "prefer" ${server_jar[@]}
    fi

    echo $server_jar
}

