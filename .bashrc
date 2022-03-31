#
# ~/.bashrc
#

alias ls='ls --color=none'
alias ll='ls -lav --ignore=..'   # show long listing of all except ".."
alias l='ls -lav --ignore=.?*'   # show long listing but no hidden dotfiles except "."

#---unknown009's config---#
export EDITOR=nvim
export BROWSER=brave

alias nv='nvim'
alias la='ls -alh'
#---end---#

[[ "$(whoami)" = "root" ]] && return

[[ -z "$FUNCNEST" ]] && export FUNCNEST=100          # limits recursive functions, see 'man bash'

## Use the up and down arrow keys for finding a command in history
## (you can write some initial letters of the command first).
bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'

# eval colorscript -r
PS1="\[\e[34m(\u)\] \[\e[33m\]\w\n\[\e[32m\]$ "
