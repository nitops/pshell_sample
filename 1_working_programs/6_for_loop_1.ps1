# Print "*" half diagonal based on number of lines input by user:

$num_lines=Read-Host("Enter number of lines")

for($i=0;$i -le $num_lines; $i++){
    Write-Host(" " * ($num_lines-$i))
    Write-Host("*" * (2*$i+1))
    
}

 
