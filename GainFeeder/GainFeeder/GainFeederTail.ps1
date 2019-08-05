$file = "GainFeeder.log"
$sources = Get-Content $PSScriptRoot\serverList.txt

Start-Transcript "$PSScriptRoot\Logs\ Logs $(get-date -uformat %d%m%Y%H%M%S).txt" -Append
foreach ($source in $sources) {
    if(Test-Path $source\$file){
        Write-Host ("`n $source\$file") 
        Get-Content $source\$file -Tail 10
    }else {
        Write-Host ("`n File DOES NOT exist `n","$source\$file") -ForegroundColor Red
    }
}
Stop-Transcript