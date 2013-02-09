# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="dieter"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# export DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git github vi-mode)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/usr/bin/vendor_perl:/usr/bin/core_perl

# The best
export EDITOR="vim"
export BROWSER="chromium"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator

alias h="history | grep "
alias guard="~/.gem/ruby/1.9.1/bin/guard "
alias scheme="rlwrap -r -c -f $HOME/.scheme_completion scheme"
alias ad="aplay --list-devices"
alias transcribe="/home/nick/builds/transcribe/transcribe"
alias par="pulseaudio --kill; pulseaudio --start"
alias thin="bundle exec thin start"
alias mk="tmux kill-session -t "

function ru() {
    local pid=$(pgrep -af 'unicorn_rails' | grep master | awk '{print $1}')
    kill -9 $pid
    sleep 5
    bundle exec unicorn_rails -c config/unicorn.development.rb -D
}

function hp() {
    local origin=$(git remote -v | grep 'push' | awk -F '[:/]' '{print $2}')
    local branch=$(git rev-parse --abbrev-ref HEAD)
    hub pull-request -b $origin:$1 -h $origin:$branch -i $2
}

function mc() {
    mkdir $1
    cd $1
}

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

eval `dircolors /home/nick/.dircolors`

# Disable autocorrect
unsetopt correct_all
