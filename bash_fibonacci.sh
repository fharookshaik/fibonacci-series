#!/bin/bash
function printUsage {
    printf "Usage: fibonacci [n]\n\nTo print the fibonacci series up to n members\n\n"
    exit 0
}

function printFibo {
    i=$1
    f=$2
    n=$3
    if [ "$i" -eq 2 ]; then #output formatting
        printf ", "
    fi
    printf "%s" "$f" #print fibonacci term
    if [ "$i" -eq $((n - 1)) ]; then #output formatting
        printf "\n"
    else
        printf ", "
    fi
}

function fibonacci {
    n=$1
    t1=0 #first term
    t2=1 #second term
    f=$(( t1 + t2 )) #current term
    printf "\nThis is the fibonacci series coded in bash\n\n"
    printf "%s" "$t1"
    if [ "$n" -gt 0 ]; then #if n greater than 0
        printf ", %s" "$t2"
    fi
    for (( i=2; i < "$n"; i++ )) #start at 2 because f(0) and f(1) were printed already
    do
        printFibo "$i" "$f" "$n"
        t1=$t2
        t2=$f
        f=$(( t2 + t1 ))
    done
    echo ""
}

if [ "$1" == "-h" ] || [ $# -ne 1 ]; then
    printUsage
else
    fibonacci "$@"
fi