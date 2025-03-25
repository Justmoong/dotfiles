# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/powerlevel10k/powerlevel10k.zsh-theme


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet
typeset -g POWERLEVEL9K_INSTANT_PROMPT=off

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
source ~/powerlevel10k/powerlevel10k.zsh-theme
source ~/powerlevel10k/powerlevel10k.zsh-theme

# Plugins
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# To customize prompt, run `p10k configure` or edit ~/.dotfiles/shell/.p10k.zsh.
[[ ! -f ~/.dotfiles/shell/.p10k.zsh ]] || source ~/.dotfiles/shell/.p10k.zsh
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme

. "$HOME/.local/bin/env"
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/ymy/.lmstudio/bin"