alias ls='ls --color=auto'

export PATH=$PATH:~/.scripts
export PATH=$PATH:~/.local/bin

# export PATH="$HOME/.miniconda/bin:$PATH"  # commented out by conda initialize


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/chris/.miniconda/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/chris/.miniconda/etc/profile.d/conda.sh" ]; then
        . "/home/chris/.miniconda/etc/profile.d/conda.sh"
    else
        export PATH="/home/chris/.miniconda/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

alias gpu_watch="watch -n -1 nvidia-smi"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

