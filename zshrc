set HIST_IGNORE_DUPS
unsetopt CLOBBER
unsetopt SINGLE_LINE_ZLE
bindkey -e

alias deps="make pretty-print-build-depends-list pretty-print-run-depends-list"
alias netreset="( /usr/local/bin/sudo /usr/sbin/service netif restart; /usr/local/bin/sudo /usr/sbin/service routing restart ) 2>&1 >/dev/null"
alias snoopcon="vidcontrol -PH < /dev/ttyv0"
alias srcver='( eval $(/usr/bin/grep -e "^TYPE=" -e "^REVISION=" -e "^BRANCH=" /usr/src/sys/conf/newvers.sh); printf "sys: %s\nsrc: %s\n" "$(uname -sr)" "$TYPE $REVISION-$BRANCH" )'
alias tm="/usr/bin/tail -F /var/log/messages"

alias ascii="/usr/bin/sed '18,+15!d' /usr/share/misc/ascii"
alias h="history"
alias la="ls -A"
alias less="less -QSX"
alias ll="ls -Failo"
alias lock="clear; /usr/bin/lock -npv"
alias ls="ls -F"
alias reboot="/usr/local/bin/sudo shutdown -r now"
alias sagent="pkill ssh-agent; eval \$(/usr/bin/ssh-agent) && ssh-add"
alias shutdown="/usr/local/bin/sudo shutdown -p now"
alias startx="/usr/local/bin/startx -- -nolisten tcp"

alias brightness="sudo sysctl dev.acpi_ibm.0.lcd_brightness"
alias   dark="brightness=0"
alias medium="brightness=4"
alias bright="brightness=7"

case $TERM in
  xterm*|rxvt)
    precmd()  { # idle
      printf "\033]0;%s\007" "${USER}@$(hostname -s) : ${PWD}"
    }
    preexec() { # busy
      printf "\033]0;%s\007" "${USER}@$(hostname -s) : ${PWD} - ${1}"
    }
    bindkey "[H" beginning-of-line
    bindkey "[F" end-of-line
    ;;
  screen*)
    precmd()  { # idle
      printf "\033]0;%s\007" "${USER}@$(hostname -s) : ${PWD}"
      printf "\033k%s\033\\" "`basename $SHELL`"
    }
    preexec() { # busy
      printf "\033]0;%s\007" "${USER}@$(hostname -s) : ${PWD} - ${1}"
      printf "\033k%s\033\\" "$(echo $1 | cut -d' ' -f1)"
    }
    bindkey "[1~" beginning-of-line
    bindkey "[4~" end-of-line
    ;;
esac

zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache
zstyle ':completion:*:functions' ignored-patterns '_*'

source ~/.zsh/$(hostname).zsh 2>/dev/null || true

