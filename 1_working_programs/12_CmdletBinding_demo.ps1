#example:
[CmdletBinding(PositionalBinding=$true)]

# Parameter help description
param(
    [Parameter(Mandatory=$true)]
    [Alias('hostname')]
    [ValidateLength(9,12)]
    [string]$computerName,
    
    [Parameter(Mandatory=$false)]
    [string]$outputfilePath
)


Write-Verbose "Querying wmi from $computerName"
$os = Get-WmiObject -Class WIN32_OperatingSystem -ComputerName $computerName -EA stop -EV x
$totalRam = Get-CimInstance Win32_PhysicalMemory | Measure-Object -Property capacity -Sum | ForEach-Object {"{0:N2}" -f ([math]::round(($_.Sum / 1GB),2))}
# PS custom object
$obj = [PSCustomObject]@{
    ComputerName = $computerName;
    OS_Version = $os.caption
    Manufacturer = $computerName.Manufacturer;
    totalRam = $totalRam
}

#Output to csv file if path is supplied

if($outputfilePath -ne ""){
    $obj | Export-Csv -Path $outputfilePath  -NoTypeInformation -Append
    Write-Output $obj
}
else{
    Write-Output $obj
}

