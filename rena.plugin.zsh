alias intip="ifconfig | grep 'inet '"
alias extip="curl -s http://checkip.dyndns.org/ | sed 's/[a-zA-Z<>/ :]//g'"
alias cd..="cd .."
alias reload-zsh="source ~/.zshrc"
alias edit-rena-plugin="code $ZSH_CUSTOM/plugins/rena/"

tcode() {
    if [[ "$#" != 0 ]]; then
        touch "${@}" && code "${@}"
    else
        echo "Error: must specify at least one filename:"
        echo "    tcode index.js"
    fi
}