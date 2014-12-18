
export PATH="/sbin:/bin:/usr/sbin:/usr/bin:/usr/games:/usr/local/sbin:/usr/local/bin:$HOME/bin:$HOME/.local/bin:/usr/local/kde4/bin"
export PAGER="less -Q"
export EDITOR=vim
export BLOCKSIZE=K
export G_BROKEN_FILENAMES=1
export GREP_COLOR=1
#export NCURSES_NO_UTF8_ACS=1  # for nice Ncurses with Putty

###  use whatever KDE dictates
export BROWSER=kde-open

###  Golang
export GOPATH="$HOME/src/go"
export GOOS=freebsd
export GOARCH=amd64
export GOROOT=/usr/local/go/

###  ccache
export PATH=/usr/local/libexec/ccache:$PATH
export CCACHE_PATH=/usr/bin:/usr/local/bin

