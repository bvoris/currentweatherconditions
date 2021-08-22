
# Current Weather Conditions
# Created by Brad Voris
# Change the Zip code to your location to display the current weather conditions from Weather.com
# This script displays what you want... weathe information

$zipcode = 77001
$uri = "https://weather.com/weather/today/l/$zipcode"
$data = Invoke-WebRequest $uri
$data = Invoke-WebRequest $uri
$TodaysWeather = $data.ParsedHtml.body.getElementsByTagName('div') | 
    Where {$_.getAttributeNode('data-testid').Value -eq 'CurrentConditionsContainer'} | Select -expandProperty outerText


$Currentforcast = $data.ParsedHtml.body.getElementsByTagName('div') | 
    Where {$_.getAttributeNode('id').Value -in 'todayDetails'} | select -expandProperty outerText

$TodaysWeather
$Currentforcast
