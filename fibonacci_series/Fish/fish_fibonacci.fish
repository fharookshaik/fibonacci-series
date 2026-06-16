#!/usr/bin/fish

read -P "How many Fibonacci terms should be printed? " terms

if not string match -qr '^[0-9]+$' -- "$terms"; or test "$terms" -le 0
    echo "Please enter a valid positive integer."
    exit 1
end

set t1 0
set t2 1
set results

for i in (seq 1 $terms)
    set results $results $t1

    # BC_LINE_LENGTH=0 prevents bc from breaking massive numbers into lines with backslashes
    set nextTerm (echo "$t1 + $t2" | env BC_LINE_LENGTH=0 bc)
    set t1 $t2
    set t2 $nextTerm
end
echo "Fibonacci Series up to $terms terms:"
echo (string join ", " $results)
