//
//  Int+HourMinuteSecondDuration.swift
//  
//
//  Created by Boyce Estes on 7/18/23.
//

import Foundation


public extension Int {
    
    ///  Deliver some string to denote a given number of seconds in HH:mm:ss format
    ///  Example: 02:20:14 - 2 hours 20 minutes 14 seconds
    var hourMinuteSecondDuration: String {

        let (hour, minute, second) = self.hourMinuteSecondDurationValue
        
        return String(format: "%02d:%02d:%02d", hour, minute, second)
    }
    
    
    /// Deliver a string from duration in seconds with "1h 50m" format
    var hourMinuteShortStringFormat: String {
        
        let (hour, minute, _) = self.hourMinuteSecondDurationValue
        
        return "\(hour)h \(minute)m"
    }
}

