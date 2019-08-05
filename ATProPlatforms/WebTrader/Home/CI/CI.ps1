#City-Index-PPE
$sources = Get-Content $PSScriptRoot\serverList.txt

foreach ($source in $sources) {
Test-Path $source
}

foreach ($source in $sources) {
Invoke-Item $source
}