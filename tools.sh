#!/usr/bash

function mac_brew() {
    ls -al
    brew install npm composer fzf the_silver_searcher php ripgrep
}


function bash_server(){
    npm i -g bash-language-server
}

function python_server() {
    pip install python-language-server[all]
    pip install -U setuptools
}


function main() {
    case $1 in
        'mac')
            mac_brew
        ;;
        'bash')
            bash_server
        ;;
        'python')
            python_server
        ;;
    esac

}
main $@
