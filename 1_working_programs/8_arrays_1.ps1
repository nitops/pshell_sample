# declare arrays and print value at index 

$a=@('1','2','3','4','5','65','6','8','61','4')
 
Write-Host("Value at index 3 is ") $a[3]

# declare array and print index

$laptops=@("one","two","three")
$laptops
# adding new laptop
$laptops=$laptops + "four"

Write-Host("Value at index 1 is ") $laptops[3]

# delete laptop
$laptops = $laptops | where {$_ -ne "three"}
$laptops
