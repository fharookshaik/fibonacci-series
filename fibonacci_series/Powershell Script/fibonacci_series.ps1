Function fibonacci($n) {
     $current = $previous = 1;
     while ($current -lt $n) {
           $current;
           $current,$previous = ($current + $previous),
           $current}
}

$n = Read-Host -Prompt "Enter a number: ";
$result = fibonacci($n);
Write-Output "The fibonacci series $result";