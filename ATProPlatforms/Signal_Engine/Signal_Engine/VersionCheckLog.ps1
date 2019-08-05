#Signal_Engine-PPE
$sources = Get-Content $PSScriptRoot\serverList.txt

Start-Transcript -Path "$PSScriptRoot\Version\ Signal_Engine$(get-date -uformat %d%m%Y%H%M%S).txt" -Append
foreach ($source in $sources) {
Test-Path $source
}
foreach ($source in $sources) {
Get-ChildItem -Path $source | sort LastWriteTime | select -last 3
} 
Stop-Transcript