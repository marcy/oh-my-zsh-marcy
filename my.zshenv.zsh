# -*- coding: utf-8; -*-
#
# [2006-12-19]. .zshenv

# 環境変数

export LANG=ja_JP.UTF-8
export SVN_EDITOR="emacsclient"
export LC_ALL=ja_JP.UTF-8
export LC_CTYPE=C
export EDITOR="emacs -nw -q"

# ls -G の設定
export LSCOLORS=ExFxCxdxBxegedabagacad

# ls --color の設定
export LS_COLORS='di=01;34:ln=01;35:so=01;32:ex=01;31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
export HREF_DATADIR=/usr/local/share/href

# ホストごとの設定
case $OSTYPE in
    linux*)
        export SHELL=/usr/bin/zsh
        #export XMODIFIERS=@im=uim
        #export GTK_IM_MODULE=uim
        export PAGER=/usr/bin/lv
        #export REFE_DATA_DIR=/usr/share/refe
        export RUBYLIB=/usr/local/lib/ruby/gems/1.8:/usr/lib/ruby/site_ruby/1.8:/usr/lib/ruby/1.8:/usr/lib/ruby/1.8:~/ruby/lib
        # export PYTHONPATH=/usr/lib/python2.4:/usr/lib/python2.4/site-package:/usr/lib/pygtk/2.0
        export PATH=$HOME/bin:/var/lib/gems/1.8/bin/:/usr/local/bin:/usr/bin:/bin:/sbin:/usr/sbin:/usr/local/sbin
        # export PATH=$HOME/bin::/usr/local/bin:/usr/bin:/bin:/sbin:/usr/sbin:/usr/local/sbin
        export LD_LIBRARY_PATH=/usr/local/lib:/usr/lib:~/lib
        export PKG_CONFIG_PATH=/usr/lib/pkgconfig:/usr/local/lib/pkgconfig
        export MANPATH=/usr/share/man:/usr/local/man
        ;;
    darwin*)
        export PKG_CONFIG_PATH=/usr/X11/lib/pkgconfig
        # export SHELL=/opt/local/bin/zsh
        export XMODIFIERS=@im=uim
        export GTK_IM_MODULE=uim
        # export PAGER=/opt/local/bin/lv
        #export REFE_DATA_DIR=/usr/share/refe
        export RUBYLIB=$RUBYLIB:~/Dropbox/ruby/lib
        export JRUBY_HOME=$HOME/local/jruby
        # export PYTHONPATH=/opt/local/lib/python2.4/site-packages:~/python/lib
        # export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home/
        # export CLASSPATH=/System/Library/Frameworks/JavaVM.framework/Classes/
        export PATH=$HOME/bin:/opt/local/bin:/usr/local/bin:/bin:/usr/local/sbin:/sbin:/usr/sbin:/usr/bin:/usr/X11R6/bin:$PATH:$JRUBY_HOME/bin:$HOME/Dropbox/bin
        export LD_LIBRARY_PATH=/usr/local/lib:/opt/local/lib:~/lib
        export MANPATH=/opt/local/man:/opt/local/share/man:/usr/share/man:/usr/local/man:/usr/local/share/man
        export GREP_OPTIONS="--binary-files=without-match --color=auto"
        export LESS='-R'
        export LESSOPEN='| /usr/local/bin/src-hilite-lesspipe.sh %s'
        export BUNDLER_EDITOR=emacsclient  
        ;;
esac

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

fpath=(/usr/local/share/zsh-completions $fpath)