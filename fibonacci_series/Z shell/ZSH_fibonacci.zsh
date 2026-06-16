#!/bin/zsh

autoload -U zcalc

print -n "How many Fibonacci terms should be printed? "
read terms

if [[ ! "$terms" =~ ^[0-9]+$ ]] || (( terms <= 0 )); then
    print "Please enter a valid positive integer."
    exit 1
fi

a="0"
b="1"

print "\nGenerating $terms Fibonacci terms:"

for (( i=1; i<=terms; i++ )); do
    print -n "$a "

    next=$(echo "$a + $b" | bc)

    a=$b
    b=$next
done

print ""
