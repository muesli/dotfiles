#!/bin/bash

function linkTo {
    if [ -f "$2" ]
    then
        mv "$2" "$2.before.dotfiles"
    fi
    ln -nsf "`pwd`/$1" "$2"
}
