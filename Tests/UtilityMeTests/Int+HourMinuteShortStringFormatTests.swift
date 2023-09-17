//
//  Int+HourMinuteShortStringFormatTests.swift
//  
//
//  Created by Boyce Estes on 9/16/23.
//

import XCTest


final class Int_HourMinuteShortStringFormatTests: XCTestCase {
    
    func test_hourMinuteShortStringFormat_noSeconds_delivers0Formatted() {
        
        // given
        let durationInSeconds = 0
        // when
        let hourMinuteShortString = durationInSeconds.hourMinuteShortStringFormat
        //then
        XCTAssertEqual(hourMinuteShortString, "0h 0m")
    }
    
    
    func test_hourMinuteShortStringFormat_SecondsLessThanAMinute_delivers0Formatted() {
        
        // given
        let durationInSeconds = 59
        // when
        let hourMinuteShortString = durationInSeconds.hourMinuteShortStringFormat
        //then
        XCTAssertEqual(hourMinuteShortString, "0h 0m")
    }
    
    
    func test_hourMinuteShortStringFormat_SecondsMoreThanAMinLessThanAnHour_delivers0HXMFormatted() {
        
        // given
        let durationInSeconds = 300
        // when
        let hourMinuteShortString = durationInSeconds.hourMinuteShortStringFormat
        //then
        XCTAssertEqual(hourMinuteShortString, "0h 5m")
    }
    
    
    func test_hourMinuteShortStringFormat_SecondsExactlyAnHour_deliversXH0MFormatted() {
        
        // given
        let durationInSeconds = 3600
        // when
        let hourMinuteShortString = durationInSeconds.hourMinuteShortStringFormat
        //then
        XCTAssertEqual(hourMinuteShortString, "1h 0m")
    }
    
    
    func test_hourMinuteShortStringFormat_SecondsMoreThan24Hours_deliversXHXMFormatted() {
        
        // given
        let durationInSeconds = 123456789
        // when
        let hourMinuteShortString = durationInSeconds.hourMinuteShortStringFormat
        //then
        XCTAssertEqual(hourMinuteShortString, "34293h 33m")
    }
}
