Function fibonacci($n) {
     $current = $previous = 1;
     while ($current -lt $n) {
           $current;
           $current,$previous = ($current + $previous),
           $current}
}

$n = Read-Host -Prompt "Enter a number: ";
$result = fibonacci($n);
Write-Host "The fibonacci series $result";