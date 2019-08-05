#Market_Information-PPE
#$sources = @(
#'\\PKH-PPE-WEB46\Websites\trade.loginandtrade.com\marketinfo',
#'\\PKH-PPE-WEB47\Websites\trade.loginandtrade.com\marketinfo'
#)

#$path = 'C:\Users\aklinga\Desktop\Tools_Applications\ServerPaths\PPEServerPaths\ATProPlatforms\Market_Information\Market_Information'
#$sources = Get-Content $path\serverList.txt
#$sources = Get-Content .\serverList.txt
$sources = Get-Content $PSSCriptRoot\serverList.txt

Start-Transcript -Path "$PSScriptRoot\Version\ Market_Information$(get-date -uformat %d%m%Y%H%M%S).txt" -Append
foreach ($source in $sources) {
Test-Path $source
}
foreach ($source in $sources) {
Get-ChildItem -Path $source | sort LastWriteTime | select -last 3
} 
Stop-Transcript