#powerlevel10k
if [ -f /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme ]; then
  source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme
elif [ -f /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme ]; then
  source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
fi

typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

alias python=python3
alias pip=pip3
alias brew-up='brew update && brew upgrade && brew cleanup'

b() {
    brew cleanup
    brew update
    brew upgrade
    brew cleanup
    echo "Check Complete at $(date)." >> ~/checkbrew.log
}

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