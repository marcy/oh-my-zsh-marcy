HISTFILE=$HOME/Dropbox/dotfiles/dot.zsh-history
HISTSIZE=100000
SAVEHIST=100000

function history-all { history -E 1 }

alias rm='rm -i'
alias vi='vim'
alias cp='cp -i'
alias mv='mv -i'
alias ls='ls -Fv'
alias df='df -h'

function chpwd() { ls }

alias gd='dirs -v| head; echo -n "select number: "; read newdir; cd +"$newdir"'

alias ll='ls -l'
alias la='ls -a'
alias diff='colordiff'

# グローバルエイリアス
alias -g G='| grep'
alias -g L='| lv -c'
alias -g H='| head'
alias -g T='| tail'

alias r='bundle exec rails'

alias g="git"

alias ec='emacsclient'

# ホストごとの設定
case $OSTYPE in
    linux*)
        alias e='emacs'
        ;;
    darwin*)
        alias e='open -a /Applications/Emacs.app'
        alias fcd='source /Users/masashi/bin/fcd.sh'
        alias xsetbg='xsetroot -bitmap /Users/masashi/Dropbox/Photos/WallPaper/standard/bsd.xbm'
        alias -s "txt"='open -a Emacs'
        ;;
esac

[[ -f `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

eval "$(rbenv init -)"
