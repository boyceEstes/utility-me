import XCTest
@testable import UtilityMe



final class String_RegexCaptureGroupTests: XCTestCase {

    func test_captureRegex_findPatternThatExistsInString_capturesDefinedPattern() {
        
        // given
        // Pattern - ex: (1), #""# is to denote regular expression, "\d" captures any digit
        let captureNumberPattern = #"(\d+)"#
        let targetNumber = "21"
        let stringWithPattern = "Any (\(targetNumber)"
        
        // when
        let capturedDigit = stringWithPattern.capture(regex: captureNumberPattern)
        
        XCTAssertEqual(capturedDigit, "\(targetNumber)")
    }
    
    
    func test_captureRegex_findPatternThatDoesNotExistsInString_returnsNil() {
        
        // given
        // Pattern - ex: (1), #""# is to denote regular expression, "\d" captures any digit
        let captureNumberPattern = #"(\d+)"#
        let stringWithoutPattern = "Any"
        
        // when
        let capturedDigit = stringWithoutPattern.capture(regex: captureNumberPattern)
        
        XCTAssertNil(capturedDigit)
    }
}
