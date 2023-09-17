//
//  File.swift
//  
//
//  Created by Boyce Estes on 7/18/23.
//

import XCTest
import UtilityMe


final class Int_HourMinuteSecondDuration: XCTestCase {
    
    func test_hourMinuteSecondDuration_fromZeroSecondDuration_deliversZero() {
        
        // given
        let durationInSeconds = 0
        // when
        let hourMinuteSecondDurationString = durationInSeconds.hourMinuteSecondDuration
        // then
        XCTAssertEqual(hourMinuteSecondDurationString, "00:00:00")
    }
    
    
    func test_hourMinuteSecondDuration_fromLargeDurationMultipleHoursLong_deliversFormattedString() {
        
        // given
        let durationInSeconds = 123456789
        // when
        let hourMinuteSecondDurationString = durationInSeconds.hourMinuteSecondDuration
        // then
        XCTAssertEqual(hourMinuteSecondDurationString, "34293:33:09")
    }
    
    
    func test_hourMinuteSecondDuration_fromExactly60Seconds_deliversOneMinute() {
        
        // given
        let durationInSeconds = 60
        // when
        let hourMinuteSecondDurationString = durationInSeconds.hourMinuteSecondDuration
        // then
        XCTAssertEqual(hourMinuteSecondDurationString, "00:01:00")
    }
    
    
    func test_hourMinuteSecondDuration_fromExactly60Minutes_deliversOneHour() {
        
        // given
        let durationInSeconds = 3600
        // when
        let hourMinuteSecondDurationString = durationInSeconds.hourMinuteSecondDuration
        // then
        XCTAssertEqual(hourMinuteSecondDurationString, "01:00:00")
    }
    
    
    func test_hourMinuteSecondDuration_from59Minutes59Seconds_doesNotDeliverOneHour() {
        
        // given
        let durationInSeconds = 3599
        // when
        let hourMinuteSecondDurationString = durationInSeconds.hourMinuteSecondDuration
        // then
        XCTAssertEqual(hourMinuteSecondDurationString, "00:59:59")
    }
}
