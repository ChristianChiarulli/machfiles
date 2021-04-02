# ZSH config
[ -f $HOME/.config/zsh/exports.zsh ] && source $HOME/.config/zsh/exports.zsh
[ -f $HOME/.config/zsh/prompt.zsh ] && source $HOME/.config/zsh/prompt.zsh
[ -f $HOME/.config/zsh/aliases.zsh ] && source $HOME/.config/zsh/aliases.zsh
[ -f $HOME/.config/zsh/functions.zsh ] && source $HOME/.config/zsh/functions.zsh
[ -f $HOME/.config/zsh/broot.zsh ] && source $HOME/.config/zsh/broot.zsh
[ -f $HOME/.config/zsh/conda.zsh ] && source $HOME/.config/zsh/conda.zsh
# [ -f $HOME/.config/zsh/luamb.zsh ] && source $HOME/.config/zsh/luamb.zsh
[ -f $HOME/.config/zsh/fnm.zsh ] && source $HOME/.config/zsh/fnm.zsh
# [ -f $HOME/.config/zsh/sdkman.zsh ] && source $HOME/.config/zsh/sdkman.zsh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -f /usr/share/fzf/completion.zsh ] && source /usr/share/fzf/completion.zsh
[ -f /usr/share/fzf/key-bindings.zsh ] && source /usr/share/fzf/key-bindings.zsh


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/chris/.sdkman"
[[ -s "/home/chris/.sdkman/bin/sdkman-init.sh" ]] && source "/home/chris/.sdkman/bin/sdkman-init.sh"
export PATH=$PATH:/usr/local/go/bin
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/.local/bin/statusbar:$PATH
