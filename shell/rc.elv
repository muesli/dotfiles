# aliases
fn ls { e:ls --color=auto $@ }
fn l { ls -alh $@ }
fn grep { e:grep --color $@ }
fn glog { git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --all $@ }

# bind
#le:binding[insert][Alt+Backspace]=$le:&kill-small-word-left
le:binding[insert][Ctrl+A]=$le:&move-dot-sol
le:binding[insert][Ctrl+E]=$le:&move-dot-eol
le:binding[insert][Ctrl+L]={ clear > /dev/tty }
le:binding[insert][Ctrl+/]=$le:&start-location
le:binding[insert][Alt+Up]={ cd .. }
le:binding[navigation][h]=$le:&nav-left
le:binding[navigation][l]=$le:&nav-right
le:binding[navigation][j]=$le:&nav-down
le:binding[navigation][k]=$le:&nav-up

#E:LANG=en_US.UTF-8
#E:LANGUAGE=en_US.UTF-8
E:LS_COLORS=[(splits &sep="'" (dircolors | head -1))][1]

#le:completer['']={ e:bash ~/.elvish/get-completion.bash $@args }
#if ==s 'root' `whoami`; then put ' # '; else put ' $ '; fi

le:prompt={ le:styled (put "╭─ ") white; le:styled (tilde-abbr $pwd) "bold;lightyellow"; le:styled (put " (") gray; le:styled (put `whoami`) "lightgreen"; le:styled (put "@") gray; le:styled (put `hostname`) "lightblue"; le:styled (put ")") gray; le:styled (put "\n╰◉ ") white }
le:rprompt={ le:styled (put "(") gray; le:styled (put `date +%H:%M:%S`) "gray"; le:styled (put ")") gray }

le:binding[insert][Down]={ }
