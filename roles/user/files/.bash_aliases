export PATH="/usr/bin/python3:$PATH"
export KUBECONFIG=/home/$USER/.kube/config
export PATH=$HOME/local/bin:$PATH
export PROMPT_COMMAND="history -a; history -n; $PROMPT_COMMAND"
export EDITOR=vim
export VISUAL=vim
eval "$(zoxide init bash)"
alias getcmd='cat /home/$USER/.bash_history | grep'
alias ll='ls -lahs'
# Function to check if a session exists and is attached
is_attached() {
  local session_name="$1"
  local status=$(tmux ls | grep "^${session_name}:" | awk '{ print $10 }')
  if [[ "$status" == "(attached)" ]]; then
    return 0  # true
  else
    return 1  # false
  fi
}

# Function to create a new tmux session with a given name
create_new_session() {
  local session_name="$1"
  if tmux has-session -t "$session_name" 2>/dev/null; then
    return 1
  else
    tmux new-session -s "$session_name"
    return 0
  fi
}
if [ -z "$TMUX" ]; then
  SESSION_NAME="meow"
  if ! create_new_session "$SESSION_NAME"; then
    if ! is_attached "$SESSION_NAME"; then
      tmux attach -t "$SESSION_NAME"
      exit 0
    fi
    SESSION_NAME="main"
    if ! create_new_session "$SESSION_NAME"; then
      if ! is_attached "$SESSION_NAME"; then
        tmux attach -t "$SESSION_NAME"
        exit 0
      fi
      # Create or attach tmp sessions
      count=0
      while true; do
        SESSION_NAME="tmp${count}"
        if ! create_new_session "$SESSION_NAME"; then
          if ! is_attached "$SESSION_NAME"; then
            tmux attach -t "$SESSION_NAME"
            exit 0
          fi
          ((count++))
        else
          break
        fi
      done
    fi
  else
    tmux attach -t "$SESSION_NAME"
  fi
fi
tmux source ~/.tmux.conf
neofetch
alias la='ls -lh' 
alias kc='kubectl'
alias ap='ansible-playbook'
alias ag='ansible-galaxy'
alias tray='pstree -AcuT $USER'
alias tmux-ka="tmux ls | cut -d: -f1 | xargs -n 1 tmux kill-session -t"
alias tmux-ks='function _tmux_kill_sessions(){ for session in "$@"; do tmux kill-session -t "$session"; done }; _tmux_kill_sessions'

