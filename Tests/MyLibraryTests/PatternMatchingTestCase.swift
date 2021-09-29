//
//  PatternMatchingTestCase.swift
//  
//
//  Created by jcruzsa on 28/09/21.
//

import XCTest
@testable import MyLibrary

final class PatternMatchingTestCase: XCTestCase {
//    func test_Character() {
//        let g: Character = "g"
//        switch g {
//        case let g where g.isNumber:
//            XCTFail()
//        case _ where g.isHexDigit:
//            XCTFail()
//        default:
//            break
//        }
//    }
    
    func test_Character() {
        let g: Character = "g"
        switch g {
        case \.isNumber, \.isHexDigit:
            XCTFail()
        case \.isLetter:
            break
        default:
            XCTFail()
        }
    }
    
    func test_Double() {
        switch 1.0 {
        case \.isZero:
            XCTFail()
        case [2, 100, -0.3].contains, { $0 != 1}:
            XCTFail()
        case \.isInteger:
            break
        default:
            XCTFail()
        }
    }
}
