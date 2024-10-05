# Function to get the current Git branch
function parse_git_branch {
    git symbolic-ref --short HEAD 2>/dev/null
}

# Function to get the current Kubernetes context
function parse_kube_context {
    kubectl config current-context 2>/dev/null
}

# Set a colored prompt with the specified colors
if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[38;5;204m\]\u@\h\[\033[00m\]:\[\033[38;5;15m\]\w\[\033[38;5;214m\]\[\033[38;5;15m\]/\[\033[38;5;214m\]\W\[\033[38;5;225m\][$(parse_git_branch)]\[\033[38;5;225m\][$(parse_kube_context)]\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w[$(parse_git_branch)][$ (parse_kube_context)]\$ '
fi

