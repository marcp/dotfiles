#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator

# Aliases
alias h="history | grep "
alias guard="~/.gem/ruby/1.9.1/bin/guard "
alias scheme="rlwrap -r -c -f $HOME/.scheme_completion scheme"
alias ad="aplay --list-devices"
alias transcribe="/home/nick/builds/transcribe/transcribe"
alias par="pulseaudio --kill; pulseaudio --start"
alias thin="bundle exec thin start"
alias mk="tmux kill-session -t "

# Functions
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
