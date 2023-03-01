$a=2
$b=20.25
$c="Myra"
[char]$d=0xada
cls
$a.GetType().FullName
$b.GetType().FullName
$c.GetType().FullName
$d.GetType().FullName

# type casting
## type casting from Double to Int

[int]$b1=20.25
$b1.GetType().Name
$b1
