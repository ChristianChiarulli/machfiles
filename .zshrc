# ZSH config
# Path to your oh-my-zsh installation.
#export GTK_THEME=Adwaita:dark
export ZSH="/home/$USER/.oh-my-zsh"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Which plugins would you like to load?
plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
)
source $ZSH/oh-my-zsh.sh


if [[ "$TTY" = "/dev/tty1" ]]; then
  pgrep i3 || startx
fi
# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='nvim'
 else
   export EDITOR='vi'
 fi

#autoload -U colors && colors
export CLICOLOR=1
PROMPT="%B%{$fg[blue]%}[%{$fg[white]%}%n%{$fg[red]%}@%{$fg[white]%}%m%{$fg[blue]%}]%{$reset_color%}%  %(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"
PROMPT+=' %{$fg[cyan]%}%c%{$reset_color%} '
#PROMPT+=' %{$fg[cyan]%}%c%{$reset_color%} $(git_prompt_info)'
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"


# Change cursor shape for different vi modes.
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] 
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'

  elif [[ ${KEYMAP} == main ]] 
       [[ ${KEYMAP} == viins ]] 
       [[ ${KEYMAP} = '' ]] 
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}

alias gpu_watch="watch -n -1 nvidia-smi"
alias zshconfig="nvim ~/.zshrc"
alias ohmyzsh="nvim ~/.oh-my-zsh"
alias f="ranger"
alias v="nvim ."
# use this with media keys later
#alias play="spotify play"
#alias pause="spotify pause"
#alias next="spotify next"
#alias prev="spotify prev"
alias gp='git add . && git commit -m "auto push" && git push'
alias blog_post='cd ~/Repos/blog && git add . && git commit -m "auto push" && git push && cd -'
alias config='ranger ~/.config'
alias repos='ranger ~/Repos'
alias zrc='nvim ~/.zshrc'
alias zsource='source ~/.zshrc'
alias ls='exa --color=always --group-directories-first'
alias plague='curl https://corona-stats.online/states/us'
alias p='sudo pacman -S'
alias y='yay -S'
alias fshoot_full='flameshot full -p ~/pics/screenshots'
alias kill_vbox="kill $(ps -e | grep VirtualBox | awk '{ print $1 }')"
alias wallpapers="sxiv /storage/pics/wallpapers"
alias list_systemctl="systemctl list-unit-files --state=enabled"
alias kill_jupyter="killall jupyter-lab"
alias set_python_path="source set_python_path"
alias cat="ccat"
alias greeter="dm-tool switch-to-greeter"

# Include hidden files in autocomplete:
_comp_options+=(globdots)
export PROMPT_COMMAND="pwd > /tmp/whereami"

# Junk added by robot

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/${USER}/.miniconda/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/$USER/.miniconda/etc/profile.d/conda.sh" ]; then
        . "/home/$USER/.miniconda/etc/profile.d/conda.sh"
    else
        export PATH="/home/$USER/.miniconda/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
# export PATH="$HOME/.miniconda/bin:$PATH"  # commented out by conda initialize  # commented out by conda initialize

source /home/$USER/.config/broot/launcher/bash/br

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# fnm
export PATH=/home/$USER/.fnm:$PATH
eval "`fnm env --multi`"
