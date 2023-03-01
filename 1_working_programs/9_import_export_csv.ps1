# Import existing csv file and read contents from it
Import-Csv -Path ..\data\us-state-capitals.csv | Select-Object name,description

# export selected content to csv
Get-Process | Select-Object id,processname | ConvertTo-Csv | Export-Csv ..\data\process_output.csv