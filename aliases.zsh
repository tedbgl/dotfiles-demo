# source ./.oh-my-zsh/custom/functions.zsh

alias inv='nvim $(fzf -m --preview="bat --color=always {}")'
alias wttr='curl wttr.in/London+Kentucky | head -n -1'
alias yeet='yay -Rns'
alias please='sudo $(history -p !!)'
alias autorem='orphans=$(pacman -Qdtq); [ -z "$orphans" ] && echo "There are no orphaned packages" || sudo pacman -Rsc $orphans'
alias hmmm='yay -Sy &> /dev/null && yay -Qu'
alias ifz='find ./ -type f | fzf -m --preview="bat --color=always {}"'
alias ls='eza -a'
#alias offrecord='history -d $(history 1)'  # Here's a little lesson in trickery, this isn't going down in history
#alias vi="nano"                            # if you want to be a vi-llain number one, you need to keep this pesky nano on the run
#alias fuck='fuck; offrecord'
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
