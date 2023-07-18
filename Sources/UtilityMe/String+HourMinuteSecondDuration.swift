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
        
        let hour = durationInSeconds / 3600
        // Calculate minutes from the remainder of seconds that are not to the next hour and divide by 60
        let minute = (durationInSeconds % 3600) / 60
        // Calculate seconds from the remainder of seconds that are not to the next hour and to the next minute after that
        let second = (durationInSeconds % 3600) % 60
        
        return String(format: "%02d:%02d:%02d", hour, minute, second)
    }
}
