//
//  String+RegexCaptureGroup.swift
//  
//
//  Created by Boyce Estes on 5/26/23.
//

import Foundation


public extension String {
    
    /// Capture some given regex pattern in a string
    ///
    /// Ex: For the given string "A duplicate name (1)",
    /// you can search for the pattern #"(\d+)"# and this method will return 1
    ///
    func capture(regex: String) -> String? {
        
        let nameRange = NSRange(
            self.startIndex..<self.endIndex,
            in: self
        )
        
        let captureRegex = try! NSRegularExpression(
            pattern: regex
        )

        // Find the matching capture groups
        let matches = captureRegex.matches(
            in: self,
            options: [],
            range: nameRange
        )

        guard let match = matches.first else { return nil }

        var names: [String] = []

//         For each matched range, extract the capture group
        for rangeIndex in 0..<match.numberOfRanges {
            let matchRange = match.range(at: rangeIndex)

            // Ignore matching the entire username string
            if matchRange == nameRange { continue }

            // Extract the substring matching the capture group
            if let substringRange = Range(matchRange, in: self) {
                let capture = String(self[substringRange])
                names.append(capture)
            }
        }

        return names.last
    }
}

