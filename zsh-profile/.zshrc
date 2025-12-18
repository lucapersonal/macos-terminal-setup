# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME=""

# Load default plugins
plugins=(
  git
  vscode
)

# Load additional plugins
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Activate Oh My ZSH
source $ZSH/oh-my-zsh.sh
fpath+=("$(brew --prefix)/share/zsh/site-functions")

# Configure pure theme options
PURE_CMD_MAX_EXEC_TIME=10

# Load ZSH pure theme (found in ~/.zsh/pure)
fpath+=("$HOME/.local/zsh/pure")
autoload -U promptinit && promptinit
prompt pure

# Load ZSH Completions
ZSH_DISABLE_COMPFIX=true
fpath=(/usr/local/share/zsh-completions $fpath)

# Load MOTD Script (changes message of the day)
/etc/motd.sh

# My Aliases
alias zshconfig="code ~/.zshrc"
alias ohmyzsh="code ~/.oh-my-zsh"
alias pip="/usr/bin/pip3"
alias o="open ."