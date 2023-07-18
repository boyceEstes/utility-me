# UtilityMe

[![Swift](https://github.com/boyceEstes/utility-me/actions/workflows/swift.yml/badge.svg)](https://github.com/boyceEstes/utility-me/actions/workflows/swift.yml)

A collection of generic Foundation utility helpers


## String
### `capture(regex: String) -> String?`
Capture some given regex pattern in a string. If the pattern cannot be found, returns nil
### `hourMinuteSecondDuration(from durationInSeconds: Int) -> String`
Deliver some string to denote a given number of seconds in HH:mm:ss format
