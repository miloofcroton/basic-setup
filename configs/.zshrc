autoload -Uz promptinit
promptinit

# Use modern completion system
autoload -Uz compinit
compinit

# History

# no dups in the history, reload prompt on change, share history between sessions
setopt prompt_subst histignorealldups sharehistory

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
# eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=34=31=33'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

# Path to your oh-my-zsh installation.
export ZSH="/Users/jacktoumey/.oh-my-zsh"

POWERLEVEL9K_MODE='nerdfont-complete'

# POWERLINE FONT
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs time status)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
# POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status background_jobs history time)

#POWERLEVEL9K_TIME_FORMAT="%D{%H:%M %m.%d.%y}"
# POWERLEVEL9K_TIME_FORMAT="%D{%H:%M:%S}"
# POWERLEVEL9K_STATUS_VERBOSE=false

#POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"
# POWERLEVEL9K_NODE_VERSION_BACKGROUND='red3'
# POWERLEVEL9K_VCS_CLEAN_BACKGROUND='mediumspringgreen'

# POWERLEVEL9K_SHORTEN_DIR_LENGTH=4
# POWERLEVEL9K_OS_ICON_BACKGROUND="white"
# POWERLEVEL9K_OS_ICON_FOREGROUND="blue"
# POWERLEVEL9K_DIR_HOME_FOREGROUND="white"
# POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="white"
# POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="white"
# POWERLEVEL9K_CONTEXT_TEMPLATE="%n"

plugins=(
  git
  npm
  docker
  zsh-autosuggestions
  zsh-completions
  zsh-syntax-highlighting
)

autoload -U compinit && compinit


# COMPLETION_WAITING_DOTS="true"
HYPHEN_INSENSITIVE="true"

POWERLEVEL9K_PROMPT_ON_NEWLINE=true


source $ZSH/oh-my-zsh.sh


# Aliases

# alias cd-air="cd ~/Code/work/airbnb"
# alias cd-ccpam="cd ~/Code/work/airbnb/ccpam"

# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# place this after nvm initialization!
autoload -U add-zsh-hook
load-nvmrc() {
  local node_version="$(nvm version)"
  local nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$node_version" ]; then
      nvm use
    fi
  elif [ "$node_version" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
# the list below is what load-nvmrc calls
add-zsh-hook chpwd load-nvmrc
load-nvmrc

# set up python
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init -)"
fi

# export PATH=${PATH}:/usr/local/mysql/bin/

export PATH=/usr/local/opt/ruby/bin:$PATH

export PATH="/usr/local/lib/ruby/gems/2.6.0/bin":$PATH

export PATH="/usr/local/share/npm/bin":$PATH

# export GOPATH=$HOME/Code/go

eval $(thefuck --alias)

# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# # added by travis gem
# [ -f /Users/jacktoumey/.travis/travis.sh ] && source /Users/jacktoumey/.travis/travis.sh

# # added by Anaconda3 2019.03 installer
# # >>> conda init >>>
# # !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$(CONDA_REPORT_ERRORS=false '/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     \eval "$__conda_setup"
# else
#     if [ -f "/anaconda3/etc/profile.d/conda.sh" ]; then
#         . "/anaconda3/etc/profile.d/conda.sh"
#         CONDA_CHANGEPS1=false conda activate base
#     else
#         \export PATH="/anaconda3/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# # <<< conda init <<<

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# add 'code' to path
export PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin":$PATH

# disable Azure telemetry
export FUNCTIONS_CORE_TOOLS_TELEMETRY_OPTOUT="1"
