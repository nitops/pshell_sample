# Program to demonstrate user input in powershell

param(
    [switch] $freespace,
    [switch] $memoryusage
)

if($freespace){
 
    $drive = Get-Volume | Where-Object DriveLetter -EQ 'C'
    $calc_freespace = [math]::Round(($drive.SizeRemaining/1GB),2) 
    Write-Host "Size remaining for C drive is $calc_freespace GB"


}
if($memoryusage){
 
    $totalRAM = Get-CimInstance Win32_PhysicalMemory | Measure-Object -Property capacity -Sum | ForEach-Object {"{0:N2}" -f ([math]::round(($_.Sum / 1GB),2))}
    Write-Host "Total RAM size is $totalRAM GB"

    $CompObject = Get-WmiObject -Class Win32_OperatingSystem
    $calc_RAMUsed = [System.Math]::Round(($CompObject.FreePhysicalMemory/1024/1024),2)
    Write-Host "RAM used is $calc_RAMUsed GB out of total $totalRAM GB"
}
elseif ($freespace -ne $true -and $memoryusage -ne $true) {
    Write-Host "please select a parameter"
}
 
