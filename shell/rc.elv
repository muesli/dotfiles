# aliases
fn code [@a]{ code-oss $@a }
fn e [@a]{ $E:EDITOR $@a }
fn ls [@a]{ e:ls --color=auto $@a }
fn l [@a]{ ls -alh $@a }
fn pass [@a]{ gopass $@a }
fn grep [@a]{ e:grep --color $@a }
fn glog [@a]{ git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --all $@a }

# bind
#edit:insert:binding[Alt+Backspace]=$edit:&kill-small-word-left
edit:insert:binding[Ctrl+A]=$edit:&move-dot-sol
edit:insert:binding[Ctrl+E]=$edit:&move-dot-eol
edit:insert:binding[Ctrl+L]={ clear > /dev/tty }
edit:insert:binding[Ctrl+/]=$edit:location:&start
edit:insert:binding[Alt+Up]={ cd .. }
#edit:navigation:binding[h]=$edit:nav:&left
#edit:navigation:binding[l]=$edit:nav:&right
#edit:navigation:binding[j]=$edit:nav:&down
#edit:navigation:binding[k]=$edit:nav:&up
edit:insert:binding[Down]={ }

#E:LANG=en_US.UTF-8
#E:LANGUAGE=en_US.UTF-8
E:LS_COLORS=[(splits "'" (dircolors | head -1))][1]
E:GOPATH=~/Sources/go
E:EDITOR=micro
E:QT_PKG_CONFIG=true
E:PATH=~/bin:$E:GOPATH/bin:$E:PATH

#edit:completer['']={ e:bash ~/.elvish/get-completion.bash $@args }
#if == s 'root' `whoami`; then put ' # '; else put ' $ '; fi

use theme:chain
theme:chain:setup

edit:prompt = $theme:chain:&prompt
edit:rprompt = $theme:chain:&rprompt

#edit:prompt={ edit:styled (put "╭─ ") white; edit:styled (tilde-abbr $pwd) "bold;lightyellow"; edit:styled (put " (") gray; edit:styled (put (whoami)) "lightgreen"; edit:styled (put "@") gray; edit:styled (put (hostname)) "lightblue"; edit:styled (put ")") gray; edit:styled (put "\n╰◉ ") white }
#edit:rprompt={ edit:styled (put "(") gray; edit:styled (put (date +%H:%M:%S)) "gray"; edit:styled (put ")") gray }
