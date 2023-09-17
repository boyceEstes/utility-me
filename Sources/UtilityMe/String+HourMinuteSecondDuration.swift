//
//  String+HourMinuteSecondDuration.swift
//  
//
//  Created by Boyce Estes on 7/18/23.
//

import Foundation


public extension String {
    
    ///  Deliver some string to denote a given number of seconds in HH:mm:ss format
    ///  Example: 02:20:14 - 2 hours 20 minutes 14 seconds
    static func hourMinuteSecondDuration(from durationInSeconds: Int) -> String {

        
        let (hour, minute, second) = durationInSeconds.hourMinuteSecondDurationValue
        
        return String(format: "%02d:%02d:%02d", hour, minute, second)
    }
}
