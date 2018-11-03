##[PowderKeg]
### Pitch
* PowderKeg finds the ski resort with the most ideal conditions for a great ski day!

### Problem
* Deciding which ski resort to go to is hard with factors to consider like epic snowfall, and if the wind & chill will be worth it.

### Solution
* This app will display weather data (snowfall, wind, sunshine, etc.) specific to colorado ski resorts to help skiers and snowboarders plan their trip to the mountain. It's also going to feature awesome pics of skiers & snowboarders to get users in the zone.

### Target Audience
* This app would be applicable to skiers, snowboarders, & powder chasers.

### Integrations
* API ideas: weather unlocked, onthesnow, google photos api, dark sky api, foreca api, twilio to send text alerts
* OAuth integration: Google.

### DarkSky API

* apparentTemperature:
 (not on daily)
The apparent (or “feels like”) temperature in degrees Fahrenheit.

* apparentTemperatureHigh:
 (only on daily)
The daytime high apparent temperature.

* apparentTemperatureHighTime:
 (only on daily)
The UNIX time representing when the daytime high apparent temperature occurs.

* cloudCover:
The percentage of sky occluded by clouds, between 0 and 1, inclusive.

* icon:
A machine-readable text summary of this data point, suitable for selecting an icon for display. If defined, this property will have one of the following values: clear-day, clear-night, rain, snow, sleet, wind, fog, cloudy, partly-cloudy-day, or partly-cloudy-night. (Developers should ensure that a sensible default is defined, as additional values, such as hail, thunderstorm, or tornado, may be defined in the future.)

* precipAccumulation:
 (only on hourly and daily)
The amount of snowfall accumulation expected to occur, in inches. (If no snowfall is expected, this property will not be defined.)

* precipIntensityMax:
 (only on daily)
The maximum value of precipIntensity during a given day.

* precipIntensityMaxTime:
 (only on daily)
The UNIX time of when precipIntensityMax occurs during a given day.

* precipProbability:
The probability of precipitation occurring, between 0 and 1, inclusive.

* precipType:
The type of precipitation occurring at the given time. If defined, this property will have one of the following values: "rain", "snow", or "sleet" (which refers to each of freezing rain, ice pellets, and “wintery mix”). (If precipIntensity is zero, then this property will not be defined. Additionally, due to the lack of data in our sources, historical precipType information is usually estimated, rather than observed.)

* temperatureHigh:
 (only on daily)
The daytime high temperature.

* temperatureHighTime:
 (only on daily)
The UNIX time representing when the daytime high temperature occurs.

* visibility:
The average visibility in miles, capped at 10 miles.

* windGust:
The wind gust speed in miles per hour.

* windGustTime:
 (only on daily)
The time at which the maximum wind gust speed occurs during the day.

* windSpeed:
The wind speed in miles per hour.

* alerts array
