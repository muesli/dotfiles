### Aliases
fn e [@a]{ $E:EDITOR $@a }
fn ls [@a]{ e:ls --color=auto $@a }
fn l [@a]{ ls -alh $@a }
fn pass [@a]{ gopass $@a }
fn grep [@a]{ e:grep --color $@a }
fn glog [@a]{ git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --all $@a }
#fn gh [@a]{ cd $E:GOPATH/src/github.com/muesli/$@a }
fn gh [@a]{ if (== (count $a) 0) { cd $E:GOPATH/src/github.com/muesli } else { cd (find $E:GOPATH/src/ -type d -name $@a | head -1) } }
fn ch [@a]{ code-oss (find $E:GOPATH/src/ -type d -name $@a | head -1) }
fn code [@a]{ code-oss $@a }

### Key bindings
# Alt-backspace to delete word
#edit:insert:binding[Alt+Backspace]=$edit:&kill-small-word-left
# Alt-d to delete the word under the cursor
#edit:insert:binding[Alt-d] = { edit:move-dot-right-word; edit:kill-word-left }

edit:insert:binding[Ctrl+A]=$edit:&move-dot-sol
edit:insert:binding[Ctrl+E]=$edit:&move-dot-eol
edit:insert:binding[Ctrl+L]={ clear > /dev/tty }
edit:insert:binding[Ctrl+H]=$edit:location:&start
edit:insert:binding[Ctrl+/]=$edit:location:&start
edit:insert:binding[Alt+Up]={ cd .. }

# vim nav bindings
#edit:navigation:binding[h]=$edit:nav:&left
#edit:navigation:binding[l]=$edit:nav:&right
#edit:navigation:binding[j]=$edit:nav:&down
#edit:navigation:binding[k]=$edit:nav:&up

# surpress warning when at end of history
edit:insert:binding[Down]={ }

### Completion
#edit:completer['']={ e:bash ~/.elvish/get-completion.bash $@args }

### ENV vars
#E:LANG=en_US.UTF-8
#E:LANGUAGE=en_US.UTF-8
E:LS_COLORS=[(splits "'" (dircolors | head -1))][1]
E:GOPATH=~/Sources/go
E:EDITOR=micro
E:QT_PKG_CONFIG=true
E:PATH=~/bin:$E:GOPATH/bin:$E:PATH

### Prompt
use theme:powerline
theme:powerline:setup
