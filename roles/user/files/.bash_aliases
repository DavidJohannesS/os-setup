export PATH="/usr/bin/python3:$PATH"
export KUBECONFIG=/home/$USER/.kube/config
export PATH=$HOME/local/bin:$PATH
export PROMPT_COMMAND="history -a; history -n; $PROMPT_COMMAND"
export EDITOR=vim
export VISUAL=vim
eval "$(zoxide init bash)"
neofetch
alias getcmd='cat /home/$USER/.bash_history | grep'
alias ll='ls -lahs'                                                                            
alias la='ls -lh' 
alias kc='kubectl'
alias ap='ansible-playbook'
alias ag="ansible-galaxy"
