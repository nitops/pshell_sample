# sample program to demonstrate function in powershell

function add-num{
    [int]$a=Read-Host -Prompt "Enter first number"
    [int]$b=Read-Host -Prompt "Enter second number"
    $res=$a+$b
    Write-Host("Result is $res")
}
add-num