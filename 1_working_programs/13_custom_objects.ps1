
# String object
$string = "hello, this is an String object"

# What type of object it is
Write-Verbose "list type of string object" -Verbose
$string.GetType()


# What are properties and methods in it?
Write-Verbose "List properties and methods of string object" -Verbose
$string | Get-Member

#using a string object property
Write-Verbose "using a string object proeprty" -Verbose
$string.Length

# using a string object method
Write-Verbose "using a string object method" -Verbose
$string.PadLeft(62,'x')
