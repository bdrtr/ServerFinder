#! usr/bin/bash

source start_options.sh

function change_the_properties() {
    gum log --structured --level info "we find the $1 file"
    gum write --width 40 --value "$(awk -F "=" '{printf "%s --> %s\n", $1, $2}' "$current_path/$1")" > $current_path/temp.txt
    awk -F "-->" '{printf "%s=%s\n", $1, $2}' $current_path/temp.txt > $current_path/$1    
    gum log --structured --level info "$1 file is updated"
}

function change_the_properties_other () {

    gum log --structured --level info "we find the $1 file"
    writed_file=$(<"$current_path/$1")
    write=$(gum write --width 40 --value "$writed_file")
    echo $write > $current_path/$1 
    gum log --structured --level info "$1 file is updated"

}


function just_base_of_path () {

    __current_path=$(echo $1 | awk -F "/" '{OFS="/"; $NF=""; print $0}') #this path is used to read the files in the directory
    echo $__current_path
}

function just_name_of_path () {

    __current_path=$(echo $1 | awk -F "/" '{print $NF}') #this path is used to read the files in the directory
    echo $__current_path
}

function server_options() {
    local select=$(gum choose --header "Options" server.properties permissions.yml commands.yml whitelist.json bukkit.yml banned-ips.json banned-players.json choose-your-file)

    case $select in 

        "server.properties")
            change_the_properties "server.properties"
            ;;
        "permissions.yml")
            change_the_properties_other "permissions.yml"
            ;;
        "commands.yml")
            change_the_properties_other "commands.yml"
            ;;
        "whitelist.json")
            change_the_properties_other "whitelist.json"
            ;;
        "bukkit.yml")
            change_the_properties_other "bukkit.yml"
            ;;
        "banned-ips.json")           
            change_the_properties_other "banned-ips.json"
            ;;
        "banned-players.json")
            change_the_properties_other "banned-players.json"
            ;;
        "choose-your-file")
            change_the_properties_other $(just_name_of_path $(gum file $current_path))
            ;;
        *)
            ;;
    esac

    starter_main $_current_path
}

function server_start () {

    echo "eula=true" > $current_path/eula.txt

    select=$(gum choose --header "Options" "quick-start" "custom-start")

    case $select in

        "quick-start")
            run $_current_path  $current_path
            ;;
        "custom-start")
            gum log --structured --level info "Customizing the server"
            ;;
        *)
            ;;
    esac   
}


function starter_main() {

    _current_path=$1 #this path provied by the main.sh
    current_path=$(just_base_of_path $_current_path) #this path is used to read the files in the directory

    select=$(gum choose --header "Options" start-server stop-server restart-server status-server find-server options-server)


    case $select in

        "start-server")
            server_start
            ;;
        "stop-server")
            gum log --structured --level info "Stopping server"
            ;;
        "restart-server")
            gum log --structured --level info "Restarting server"
            ;;
        "status-server")
            gum log --structured --level info "Checking server status"
            ;;
        "find-server")
            gum log --structured --level info "Finding server"
            ;;
        "options-server")
            server_options
            ;;



        *)
            ;;
    esac

}



