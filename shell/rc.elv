use narrow
use epm

# epm Deps
epm:install &silent-if-installed=$true `
    github.com/muesli/elvish-libs `
    github.com/zzamboni/elvish-completions `
    github.com/zzamboni/elvish-modules

use github.com/zzamboni/elvish-modules/dir

# ENV vars
#E:LANG=en_US.UTF-8
#E:LANGUAGE=en_US.UTF-8
E:LS_COLORS=[(splits "'" (dircolors | head -1))][1]
E:GOPATH=~/Sources/go
E:EDITOR=micro
E:QT_PKG_CONFIG=true
E:PATH=~/bin:$E:GOPATH/bin:$E:PATH

# Aliases
fn ls [@a]{ e:ls --color=auto $@a }
#fn grep [@a]{ e:grep --color $@a }
fn l [@a]{ ls -alh $@a }
fn e [@a]{ $E:EDITOR $@a }
fn mcd [@a]{ mkdir $@a ; cd $@a }
fn open [@a]{ xdg-open $@a }
fn pass [@a]{ gopass $@a }
fn cd [@dir]{ dir:cd $@dir }
fn code [@a]{ code-oss $@a }

## Dev stuff
### Prettier git log
fn glog [@a]{
    git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --all $@a
}
### Find path and cd to
fn gh [@a]{
    if (== (count $a) 0) {
        cd $E:GOPATH/src/github.com/muesli
    } else {
        cd (find ~/Sources -type d -name $@a |
            grep -v pkg | grep -v '.old' | grep -v '.backup' |
            head -1)
    }
}
### Find path and open with code
fn ch [@a]{
    code (find ~/Sources -type d -name $@a |
          grep -v pkg | grep -v '.old' | grep -v '.backup' |
          head -1)
}

## Go stuff
fn godeps [@a]{
    if (== (count $a) 0) {
        go list -f '{{join .Deps "\n"}}' . | gostatus -stdin -v
    } else {
        go list -f '{{join .Deps "\n"}}' $@a | gostatus -stdin -v
    }
}

# Key bindings
### Alt-backspace to delete word
#edit:insert:binding[Alt+Backspace]=$edit:&kill-small-word-left
### Alt-d to delete the word under the cursor
#edit:insert:binding[Alt-d] = { edit:move-dot-right-word; edit:kill-word-left }

edit:insert:binding[Ctrl+A]=$edit:move-dot-sol~
edit:insert:binding[Ctrl+E]=$edit:move-dot-eol~
edit:insert:binding[Ctrl+L]={ clear > /dev/tty }
edit:insert:binding[Ctrl+H]=$edit:location:start~
edit:insert:binding[Alt+Up]={ dir:cd .. }

### vim nav bindings
#edit:navigation:binding[h]=$edit:nav:&left
#edit:navigation:binding[l]=$edit:nav:&right
#edit:navigation:binding[j]=$edit:nav:&down
#edit:navigation:binding[k]=$edit:nav:&up

### surpress warning when at end of history
edit:insert:binding[Down]={ }

# Completions
#edit:completer['']={ e:bash ~/.elvish/get-completion.bash $@args }
use github.com/zzamboni/elvish-completions/cd
use github.com/zzamboni/elvish-completions/git

# Prompt
use github.com/muesli/elvish-libs/theme/powerline
powerline:setup

# Dir modes
dir:setup
edit:insert:binding[Alt-Left] = $dir:left-word-or-prev-dir~
edit:insert:binding[Alt-Right] = $dir:right-word-or-next-dir~
edit:insert:binding[Ctrl+/] = $dir:history-chooser~
