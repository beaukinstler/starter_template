#!/bin/bash




os_name=`python -c 'from os import name; print(name)'`

if [ "$os_name" == "nt" ]; then
    echo "You must set your source for Windows NT"
    echo "If your venv is named venv, then it should"
    echo "be 'venv\Scripts\activate.bat'"
else
    source ./venv/bin/activate
fi

export FLASK_APP=main.py
export FLASK_DEBUG=1

alias python=python3
alias python2=/usr/bin/python