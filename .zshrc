# ZSH config
[ -f $HOME/.config/zsh/exports.zsh ] && source $HOME/.config/zsh/exports.zsh
[ -f $HOME/.config/zsh/prompt.zsh ] && source $HOME/.config/zsh/prompt.zsh
[ -f $HOME/.config/zsh/aliases.zsh ] && source $HOME/.config/zsh/aliases.zsh
[ -f $HOME/.config/zsh/functions.zsh ] && source $HOME/.config/zsh/functions.zsh
[ -f $HOME/.config/zsh/broot.zsh ] && source $HOME/.config/zsh/broot.zsh
[ -f $HOME/.config/zsh/conda.zsh ] && source $HOME/.config/zsh/conda.zsh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -f /usr/share/fzf/completion.zsh ] && source /usr/share/fzf/completion.zsh
[ -f /usr/share/fzf/key-bindings.zsh ] && source /usr/share/fzf/key-bindings.zsh

# path to the directory with environments
export LUAMB_DIR=$HOME/.luambenvs

# optional variables:
export LUAMB_LUA_DEFAULT='lua 5.3'     # default Lua version
export LUAMB_LUAROCKS_DEFAULT=latest   # default LuaRocks version
LUAMB_DISABLE_COMPLETION=true          # disable shell completions
LUAMB_PYTHON_BIN=/usr/bin/python3      # explicitly set Python executable

# make some magic
source <(luamb shellsrc)
# or if luamb executable is not in PATH:
source <("$LUAMB_PYTHON_BIN" -m luamb shellsrc)

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/chris/.sdkman"
[[ -s "/home/chris/.sdkman/bin/sdkman-init.sh" ]] && source "/home/chris/.sdkman/bin/sdkman-init.sh"
