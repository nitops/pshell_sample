# array of strings; same things when you get content

$x = Get-Content -Path .\data\16_regex_test_document.txt

# get type of x: it will be array type
Write-Verbose "Get Type of x" -Verbose
$x.GetType()

# we will get same output if we actually define as an array
$array = @(
    'The string has something, server1234and other stuff I server111 and even more stuff',
    'The string has something, server3423 and other stuff I server433 and even more stuff',
    'The string has something, server3456 and other stuff I server333 and even more stuff',
    'The string has something, server7654 and other stuff I server444 and even more stuff',
    'The string has something, server2343 and other stuff I server566 and even more stuff',
    'The string has something, server8756 and other stuff I server881 and even more stuff'
)

# get type of array: it will be array type
Write-Verbose "Get Type of array" -Verbose
$array.GetType()

# get first element of array
Write-Verbose "Get first element of array" -Verbose
$array[3]


#looping through array of strings:

foreach ($string in $array){

    $splitstring = $string.Split(' ', 10000)  #  $splitstring - this results into new array of Strings
    
    foreach($split in $splitstring){
        if($split -match '[s][e]\D+\d+'){  # Note: \D+ -> matches any character, \d+ matches any number, so it will match like this -> se<any character><any number>
                                           # \d+ -> to limit it use {3} -> \d{3}+  it will limit number of characters to 3
                                           # when we do -match operation, there is match variable that exist and everytime match found it will add to that variable
                                           # Matches is basically a HashTable
            #$split

            # add results to another array
            $Matches[0]

        }
        
         
    
}
}

$Matches.GetType()  # its a hashtable -> key value pairs
$splitstring.GetType()