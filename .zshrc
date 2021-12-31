export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="awesomepanda"
plugins=(
    git
    gitignore
    fzf # fuzzy finder :D
    zsh-autosuggestions

)

source $ZSH/oh-my-zsh.sh

# User configuration
# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

. ~/.config/aliases
