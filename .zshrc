# Enable Powerlevel10k instant prompt for faster shell startup.
# This should stay near the top of ~/.zshrc for best effect.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Enable Zsh completion system
autoload -Uz compinit
compinit

# Load zsh-autosuggestions plugin
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# Load zsh-syntax-highlighting plugin for command syntax colors
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Load Powerlevel10k prompt theme
source ~/.powerlevel10k/powerlevel10k.zsh-theme

# Load Powerlevel10k config file if it exists
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# List of plugins to load
plugins=( 
    # other plugins...
    zsh-autosuggestions
)

