#                  __                                    __
#     ____ ___  __/ /_____  _______  ______  ____  _____/ /_
#    / __ `/ / / / __/ __ \/ ___/ / / / __ \/_  / / ___/ __ \
#  _/ /_/ / /_/ / /_/ /_/ / /  / /_/ / / / / / /_(__  ) / / /
# (_)__,_/\__,_/\__/\____/_/   \__,_/_/ /_(_)___/____/_/ /_/
# Dotfiles - Hayafumi

# Start X.org on login
[[ -t 0 && $(tty) == /dev/tty1 && ! $DISPLAY ]] && ! [[ $USER == "root" ]] && startx && exit;clear

# No typing "sudo"
while read -r i; do
	sudoargs+=("$i=sudo $i")
done << EOF
	pacman
	rmmod
EOF
alias "${sudoargs[@]}"
unset sudoargs

export VISUAL=leafpad
export EDITOR=nvim

export TERM=alacritty

export MANPAGER="nvim -c 'set ft=man' -"
export CM_LAUNCHER=rofi

# Remove autocreated directories
while read -r i; do
	todel+=("$i")
done << EOF
	$HOME/Desktop
EOF
rm -rf "${todel[@]}" > /dev/null
unset todel

# aliases
while read -r i; do
	aliasargs+=("$i")
done << EOF
	x=exit
	ls=exa -lh --git
	dir=exa -lh --git
	tree=exa --tree
EOF
alias "${aliasargs[@]}"
unset aliasargs

export GPG_TTY=$(tty)

