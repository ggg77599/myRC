#! /bin/sh
#
# utility.sh
# Copyright (C) 2019 mrg <mrg@MrGMacBookPro.local>
#
# Distributed under terms of the MIT license.
#

## reference
# https://jeoygin.org/2018/01/07/customize-macOS-4/
# https://gist.github.com/gerrard00/a08918dddc65a7bb2d814756b28ed2a1


## get the working directory of given pid 
function pwdx {  
    # note: NF is the number of columns, so $NF gives us the last column
    lsof -a -p $1 -d cwd -n | tail -1 | awk '{print $1, "\t", $NF}'
}

## get the pid and working directory of given port
function portpwdx {
    pid=$(lsof -i :$1 | tail -1 | perl -pe 's/[^\s]+\s+([^\s]+)\s.*/$1/')
    if [[ ! -z $pid ]]; then
        echo "PID" $pid
            pwdx $pid
        return 0
    else
        echo "No process listening to port $1"
        return -1
    fi
}

## show the listening port
function showport {
    lsof -iTCP -sTCP:LISTEN -nP
}

