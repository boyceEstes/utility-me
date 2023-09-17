//
//  File.swift
//  
//
//  Created by Boyce Estes on 9/16/23.
//

import XCTest
import UtilityMe


final class Int_HourMinuteSecondDurationValue: XCTestCase {
    
    
    func test_hourMinuteSecondDurationValue_fromZeroSecondDuration_deliversZeroForAll() {
        
        // given
        let durationInSeconds = 0
        // when
        let hourMinuteSecondDurationValue = durationInSeconds.hourMinuteSecondDurationValue
        // then
        XCTAssertEqual(hourMinuteSecondDurationValue.hours, 0)
        XCTAssertEqual(hourMinuteSecondDurationValue.minutes, 0)
        XCTAssertEqual(hourMinuteSecondDurationValue.seconds, 0)
    }


    func test_hourMinuteSecondDurationValue_fromLargeDurationMultipleHoursLong_deliversFormattedString() {
        
        // given
        let durationInSeconds = 123456789
        // when
        let hourMinuteSecondDurationValue = durationInSeconds.hourMinuteSecondDurationValue
        // then
        XCTAssertEqual(hourMinuteSecondDurationValue.hours, 34293)
        XCTAssertEqual(hourMinuteSecondDurationValue.minutes, 33)
        XCTAssertEqual(hourMinuteSecondDurationValue.seconds, 9)
    }


    func test_hourMinuteSecondDurationValue_fromExactly60Seconds_deliversOneMinute() {
        
        // given
        let durationInSeconds = 60
        // when
        let hourMinuteSecondDurationValue = durationInSeconds.hourMinuteSecondDurationValue
        // then
        XCTAssertEqual(hourMinuteSecondDurationValue.hours, 0)
        XCTAssertEqual(hourMinuteSecondDurationValue.minutes, 1)
        XCTAssertEqual(hourMinuteSecondDurationValue.seconds, 0)
    }


    func test_hourMinuteSecondDurationValue_fromExactly60Minutes_deliversOneHour() {
        
        // given
        let durationInSeconds = 3600
        // when
        let hourMinuteSecondDurationValue = durationInSeconds.hourMinuteSecondDurationValue
        // then
        XCTAssertEqual(hourMinuteSecondDurationValue.hours, 1)
        XCTAssertEqual(hourMinuteSecondDurationValue.minutes, 0)
        XCTAssertEqual(hourMinuteSecondDurationValue.seconds, 0)
    }


    func test_hourMinuteSecondDurationValue_from59Minutes59Seconds_doesNotDeliverOneHour() {
        
        // given
        let durationInSeconds = 3599
        // when
        let hourMinuteSecondDurationValue = durationInSeconds.hourMinuteSecondDurationValue
        // then
        XCTAssertEqual(hourMinuteSecondDurationValue.hours, 0)
        XCTAssertEqual(hourMinuteSecondDurationValue.minutes, 59)
        XCTAssertEqual(hourMinuteSecondDurationValue.seconds, 59)
    }
}
