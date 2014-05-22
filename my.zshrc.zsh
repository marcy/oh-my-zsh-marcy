### Complement ###
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' # 補完時に大文字小文字を区別しない

### Glob ###
setopt extended_glob # グロブ機能を拡張する
unsetopt caseglob    # ファイルグロブで大文字小文字を区別しない

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

function do_enter() {
    if [ -n "$BUFFER" ]; then
        zle accept-line
        return 0
    fi
    echo
    ls
    # ↓おすすめ
    # ls_abbrev
    if [ "$(git rev-parse --is-inside-work-tree 2> /dev/null)" = 'true' ]; then
        echo
        echo -e "\e[0;33m--- git status ---\e[0m"
        git status -sb
    fi
    zle reset-prompt
    return 0
}
zle -N do_enter
bindkey '^m' do_enter
