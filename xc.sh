#!/bin/bash


if [[ $1 = "-mmk"  ]]
then
    echo "Creating."
    mkdir -p $2
    echo "Created dir $2"
    ls
fi

if [[ $1 = "-f" ]]
then
    if [[ $2 = "-t=c" ]]
    then
        echo "Creating C File '$3'"
        touch $3.c
        ls
    fi

    if [[ $2 = "-t=t" ]]
    then
        echo "Creating text File '$3'"
        touch $3.txt
        ls
    fi

    if [[ $2 = "-t=cs" ]]
    then
        echo "Creating C# File '$3'"
        touch $3.cs
        ls
    fi

    if [[ $2 = "-t=cpp" ]]
    then
        echo "Creating C++ File '$3'"
        touch $3.cpp
        ls
    fi

    if [[ $2 = "-t=kt" ]]
    then
        echo "Creating Kotlin File '$3'"
        touch $3.kt
        ls
    fi

    if [[ $2 = "-t=py" ]]
    then
        echo "Creating Python File '$3'"
        touch $3.py
        ls
    fi
fi

if [[ $1 = "-e" ]] && [[ $2 = "-v" ]]
then
  vim $3
fi

if [[ -z $1 ]]
then
    echo "Run XC with -h to show help."
fi

if [[ $1 = "-h" ]]
then
    echo "This is the help page for XCSC (Extended Custom Shell Commands)"
    echo "-mmk [DIRECTORY NAME] - creates directory"
    echo "-f -t=[c, t, cs, cpp, kt, py] [FILE NAME] - creates file with file extention"
    echo "-e -v [FILENAME] - edit file using vim"
    echo "Made by meself, Relic374, just to learn a little bash"
fi
