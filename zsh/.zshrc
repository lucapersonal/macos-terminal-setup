# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME=""

# Plugins to load
plugins=(
  git
  vscode
  zsh-autosuggestions
  zsh-syntax-highlighting
)

# Activate Oh My ZSH
source $ZSH/oh-my-zsh.sh

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
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# My Aliases
alias zshconfig="code ~/.zshrc"
alias ohmyzsh="code ~/.oh-my-zsh"
alias pip="/usr/bin/pip3"
alias o="open ."