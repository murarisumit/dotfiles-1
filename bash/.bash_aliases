alias rm="rm -Iv --preserve-root"
alias ls="ls --color=auto --group-directories-first -lh"
alias mv="mv -vi"
alias cp="cp -vi"
alias ln="ln -vi"

alias shutdown="sudo shutdown now"
alias reboot="sudo shutdown -r now"

alias status="systemctl status"
alias start="systemctl start"
alias restart="systemctl restart"
alias stop="systemctl stop"
alias enable="systemctl enable"
alias disable="systemctl disable"

alias vu="vagrant up"
alias vh="vagrant halt"
alias vssh="vagrant ssh"
alias vsus="vagrant suspend"
alias vres="vagrant resume"
alias vs="vagrant status"
alias vgs="vagrant global-status"

alias ga="git add"
alias gc="git commit"
alias gd="git diff"
alias gs="git status"
alias gl="git glog"
alias gp="git push"
alias gf="git fetch --all"

alias importFromWeb="curl -H 'application/json' -X POST --data @import.json localhost:8000/importFromWeb/"
alias cancelFromWeb="curl -H 'application/json' -X POST --data @cancel.json localhost:8000/cancelFromWeb/"

alias t='todo.sh -d $HOME/Dropbox/todo/todo.cfg'

alias simplehttp="python -m SimpleHTTPServer"
