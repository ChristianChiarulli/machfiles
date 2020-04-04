[[ -f ~/.zshrc ]] && source ~/.zshrc

export PATH=$PATH:$HOME/.scripts
export EDITOR="nvim"
export TERMINAL="alacritty"
export BROWSER="brave"

if [[ "$((tty))" = "/dev/tty1" ]]; then
	pgrep i3 || startx
fi
