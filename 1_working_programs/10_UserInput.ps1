# Program to demonstrate user input in powershell
cls
$infoSelection = Read-Host -Prompt"For C Drive Space enter '1'; For RAM usage information enter '2'"

if($infoSelection -eq 1){
    Write-Host "You Selected '1' to know about C Drive Space"
    $drive = Get-Volume | Where-Object DriveLetter -EQ 'C'
    $freespace = [math]::Round(($drive.SizeRemaining/1GB),2) 
    Write-Host "Size remaining for C drive is $freespace GB"


}
elseif($infoSelection -eq 2){
    Write-Host "You Selected '2' to know about RAM usage information"
    $totalRAM = Get-CimInstance Win32_PhysicalMemory | Measure-Object -Property capacity -Sum | Foreach {"{0:N2}" -f ([math]::round(($_.Sum / 1GB),2))}
    Write-Host "Total RAM size is $totalRAM GB"

    $CompObject = Get-WmiObject -Class Win32_OperatingSystem
    $RAMUsed = [System.Math]::Round(($CompObject.FreePhysicalMemory/1024/1024),2)
    Write-Host "RAM used is $RAMUsed GB out of total $totalRAM GB"

}
else{
    Write-Host "You have selected wrong input"
}