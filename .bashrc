if [[ -f /etc/bashrc ]]; then
    source /etc/bashrc
fi

if [[ -f /usr/share/bash-completion/bash_completion ]]; then
    source /usr/share/bash-completion/bash_completion
fi

if [ -f /usr/share/git-core/contrib/completion/git-prompt.sh ]; then
    source /usr/share/git-core/contrib/completion/git-prompt.sh
fi

if [ -f ~/.fzf.bash ]; then
   source ~/.fzf.bash
fi

# use a tty for gpg
# solves error: "gpg: signing failed: Inappropriate ioctl for device"
GPG_TTY=$(tty)
export GPG_TTY
# Start the gpg-agent if not already running
if ! pgrep -x -u "${USER}" gpg-agent >/dev/null 2>&1; then
    gpg-connect-agent /bye >/dev/null 2>&1
    gpg-connect-agent updatestartuptty /bye >/dev/null
fi

# Set SSH to use gpg-agent
unset SSH_AGENT_PID
if [ "${gnupg_SSH_AUTH_SOCK_by:-0}" -ne $$ ]; then
    export SSH_AUTH_SOCK="/run/user/$UID/gnupg/S.gpg-agent.ssh"
fi

# add alias for ssh to update the tty
alias ssh="gpg-connect-agent updatestartuptty /bye >/dev/null; ssh"

shopt -s autocd
shopt -s cdspell
shopt -s cdable_vars
shopt -s extglob
shopt -s histappend
shopt -s checkwinsize
shopt -s globstar
shopt -s nocaseglob

stty -ixon
