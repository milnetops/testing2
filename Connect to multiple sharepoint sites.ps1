#connect to multiple sharepoint sites and add to explorer.
Import-Module Sharegate
$csvFile = "C:\Temp\allsharepointsites.csv"
$table = Import-Csv $csvFile
$connection = Connect-Site -Url "https://stateofwa.sharepoint.com/sites/MIL-IT-NET-OPs" -Browser -AddToExplorer
foreach ($row in $table) {
     Connect-Site -Url $row.URL -UseCredentialsFrom $connection -AddToExplorer
}
 