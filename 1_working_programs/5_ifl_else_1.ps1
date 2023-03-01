# this sample program get age input from user and output appropriate classification accordingly

$a = Read-Host("Enter your age")
$a

if($a -le 14){
        Write-Host("Your age is $a and you belong to Pediatric Group")
    }

elseif (($a -le 47) -and ($a -ge 15)){
    

        Write-Host("Your age is $a and you belong to young Group")

    }

elseif(($a -le 63) -and ($a -ge 48)){

        Write-Host("Your age is $a and you belong to middle age Group")

    }
elseif($a -ge 64){

        Write-Host("Your age is $a and you belong to elderly Group")

    }
else{

        Write-Host("Your entered $a and its not a valid age")

    }