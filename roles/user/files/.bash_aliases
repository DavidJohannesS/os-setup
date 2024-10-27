export PATH="/usr/bin/python3:$PATH"
export KUBECONFIG=/home/$USER/.kube/config
export PATH=$HOME/local/bin:$PATH
export PROMPT_COMMAND="history -a; history -n; $PROMPT_COMMAND"
export EDITOR=vim
export VISUAL=vim
eval "$(zoxide init bash)"
alias getcmd='cat /home/$USER/.bash_history | grep'
alias ll='ls -lahs'
if [ -z "$TMUX" ]; then
    tmux
fi


neofetch
alias la='ls -lh' 
alias kc='kubectl'
alias ap='ansible-playbook'
alias ag='ansible-galaxy'
alias tray='pstree -AcuT $USER'
alias tmux-ka="tmux ls | cut -d: -f1 | xargs -n 1 tmux kill-session -t"

