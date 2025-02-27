#! bin/bash

declare -A options

function run {

    while IFS='=' read -r key value; do
        [[ -z "$key" || "$key" =~ ^# ]] && continue  
        options["$key"]=$value
    done < server_start_options.txt

    for key in "${!options[@]}"; do
        echo "$key=${options[$key]}"
    done

    cd $2 &&  java -Xms${options['min_ram']} -Xmx${options['max_ram']} -jar $1 nogui    
}