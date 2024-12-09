
eval "$(/opt/homebrew/bin/brew shellenv)"

eval "$(/opt/homebrew/bin/brew shellenv)"

# Setting PATH for Python 3.12
# The original version is saved in .zprofile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.12/bin:${PATH}"
export PATH

# Added by `rbenv init` on 2024년 12월  2일 월요일 07시 54분 53초 KST
eval "$(rbenv init - --no-rehash zsh)"
eval "$(rbenv init - zsh)"
