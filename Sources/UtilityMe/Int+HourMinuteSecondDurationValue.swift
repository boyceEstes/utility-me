//
//  File.swift
//  
//
//  Created by Boyce Estes on 9/16/23.
//

import Foundation


public extension Int {
    
    /// Calculate hours minutes and seconds on some integer (representing in seconds of elapsed time)
    var hourMinuteSecondDurationValue: (hours: Int, minutes: Int, seconds: Int) {
        
        
        let hour = self / 3600
        // Calculate minutes from the remainder of seconds that are not to the next hour and divide by 60
        let minute = (self % 3600) / 60
        // Calculate seconds from the remainder of seconds that are not to the next hour and to the next minute after that
        let second = (self % 3600) % 60
        
        
        return (hour, minute, second)
    }
    
    
    /// Deliver a string from duration in seconds with "1h 50m" format
    var hourMinuteShortStringFormat: String {
        
        let (hour, minute, _) = self.hourMinuteSecondDurationValue
        
        return "\(hour)h \(minute)m"
    }
}
