$file = "GainFeeder.log"
$sources = Get-Content $PSSCriptRoot\serverList.txt

foreach ($source in $sources) {
Test-Path $source\$file
}


foreach ($source in $sources) {
$server = $source.TrimStart("\PKH-PPE").TrimEnd("Logs\MetaTrader4Server")
Get-ChildItem -Path $source\$file | sort LastWriteTime | select -last 1 | Copy-Item -Destination "$PSSCriptRoot\Logs\ $server $(get-date -uformat %d%m%Y%H%M%S).txt"
}