# Set up the prompt

autoload -Uz promptinit
promptinit
prompt bigfade


setopt histignorealldups sharehistory

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

# For looking at JSON outputs

alias ppjson='python -m json.tool'
alias ldapp='cd ~/Work/leaddyno/leaddyno-app'
alias ldserver='cd ~/Work/leaddyno/leaddyno-app && bundle exec rails server'
alias ldconsole='cd ~/Work/leaddyno/leaddyno-app && bundle exec rails console'

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# For looking at JSON outputs

alias ppjson='python -m json.tool'

# For work

alias ldapp='cd ~/data/work/leaddyno/leaddyno-app'
alias ldserver='cd ~/data/work/leaddyno/leaddyno-app && bundle exec rails server'
alias ldconsole='cd ~/data/work/leaddyno/leaddyno-app && bundle exec rails console'

# For AWS WordPress server

alias wpaws='ssh -i /home/jack/data/configs/aws/jan2017-envy-linux.pem ubuntu@ec2-35-167-130-237.us-west-2.compute.amazonaws.com'

# For Cordova

export ANDROID_HOME=/home/commander/Apps/Android/Sdk/
# export PATH=${PATH}:/home/commander/Apps/Android/Sdk/platform-tools:/home/commander/Apps/Android/Sdk/tools

if [ -d "$HOME/Apps/Android/Sdk/platform-tools" ] ; then
     export PATH="$HOME/Apps/Android/Sdk/platform-tools:$PATH"
     export PATH="$HOME/Apps/Android/Sdk/tools:$PATH"
 fi

# /usr/lib/jvm/java-9-openjdk-amd64/bin/java


export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-amd64/
export PATH=$JAVA_HOME/bin:$PATH



source  ~/Apps/powerlevel9k/powerlevel9k.zsh-theme
