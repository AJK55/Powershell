# Install-Module Selenium
# Need to install on initial install

$Driver = Start-SeChrome
Enter-SeUrl https://www.google.com -Driver $Driver
$Driver.Navigate().GotoURL("https://www.forex.com/en-us/")
$Driver.Navigate().GotoURL("https://www.google.com")
$Driver.FindElementByCssSelector('#tsf > div:nth-child(2) > div > div.RNNXgb > div > div.a4bIc > input').SendKeys('Hello')
#$Driver.FindElementByCssSelector('#tsf > div:nth-child(2) > div > div.RNNXgb > div > div.a4bIc > input').SendKeys(Keys.ENTER)
#$Driver.FindElementByCssSelector('#tsf > div:nth-child(2) > div > div.UUbT9 > div.aajZCb > div.VlcLAe > center > input.gNO89b').Click()
$Driver.Close()
