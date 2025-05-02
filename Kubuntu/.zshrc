
alias python=python3
alias pip=pip3
alias brew-up='brew update && brew upgrade && brew cleanup'

dot() {
    cd .dotfiles/
    wait 2
    echo "start sync .dotfiles on git"
    sudo git add .
    sudo git commit -m "Fixed at: $(date '+%Y-%m-%d %H:%M:%S')"
    sudo git push
    echo "Fixed at: $(date '+%Y-%m-%d %H:%M:%S')"
    echo "Done"
    cd
}

eval "$(rbenv init - zsh)"

export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export PATH=/Users/ymy/Qt/6.9.0/macos/bin:$PATH
