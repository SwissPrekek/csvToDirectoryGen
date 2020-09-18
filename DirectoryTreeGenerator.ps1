
$folderlist = Import-Csv -Path "C:\DEVUmgebung\Powershell\CSVtoDirectory\FKD.csv" -Delimiter ";"

foreach ($folder in $folderlist){

    $path = [IO.Path]::Combine('C:\DEVUmgebung\Powershell\CSVtoDirectory\Testordner', $folder.Tier1, $folder.Tier2 , $folder.Tier3, $folder.Tier4, $folder.Tier5)
    
 
    New-Item -Path $path -Type Directory -Force


    }