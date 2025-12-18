# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME=""
ZSH_DISABLE_COMPFIX=true


# --- PLUGINS ---
# Load default plugins
plugins=(
  git
  vscode
)

# Load ZSH Completions
fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src
autoload -U compinit && compinit
source "$ZSH/oh-my-zsh.sh"

# Load additional plugins
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Load oh-my-zsh
source $ZSH/oh-my-zsh.sh
fpath+=("$(brew --prefix)/share/zsh/site-functions")




# --- PURE PROMPT ---
# Load ZSH pure theme (found in ~/.zsh/pure)
fpath+=("$HOME/.local/zsh/pure")
autoload -U promptinit && promptinit

# Pure prompt options
PURE_CMD_MAX_EXEC_TIME=10

# Pure configuration (via zstyle)
zstyle :prompt:pure:path color green
zstyle ':prompt:pure:prompt:*' color cyan
zstyle :prompt:pure:git:stash show yes

# Run Pure
prompt pure


# --- CUSTOMIZATIONS ---
# Load MOTD Script (changes message of the day)
/etc/motd.sh

# My Aliases
alias zshconfig="code ~/.zshrc"
alias ohmyzsh="code ~/.oh-my-zsh"
alias pip="/usr/bin/pip3"
alias o="open ."