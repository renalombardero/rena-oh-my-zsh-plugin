alias intip="ifconfig | sed -En 's/127.0.0.1//;s/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p'"
alias extip="curl -s http://checkip.dyndns.org/ | sed 's/[a-zA-Z<>/ :]//g'"
alias cd..="cd .."
alias reload-zsh="source ~/.zshrc"
alias edit-rena-plugin="code $ZSH_CUSTOM/plugins/rena/"
alias fix-audio="sudo killall coreaudiod"

tcode() {
    if [[ "$#" != 0 ]]; then
        touch "${@}" && code "${@}"
    else
        echo "Error: must specify at least one filename:"
        echo "    tcode index.js"
    fi
}