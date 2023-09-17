# UtilityMe

[![Swift](https://github.com/boyceEstes/utility-me/actions/workflows/swift.yml/badge.svg)](https://github.com/boyceEstes/utility-me/actions/workflows/swift.yml)

A collection of generic Foundation utility helpers

## Int
### `var hourMinuteSecondDurationValue: (hours: Int, minutes: Int, seconds: Int)`
Calculate hours minutes and seconds on some integer (representing in seconds of elapsed time)

### `var hourMinuteShortStringFormat: String`
Deliver a string from duration in seconds with "1h 50m" format


### `hourMinuteSecondDuration: String`
Deliver some string to denote a given number of seconds in HH:mm:ss format
        

## String
### `capture(regex: String) -> String?`
Capture some given regex pattern in a string. If the pattern cannot be found, returns nil
