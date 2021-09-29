import XCTest
//@testable import MyLibrary
import MyLibrary

final class BoolInitTestCase: XCTestCase {
//    func testExample() throws {
//        // This is an example of a functional test case.
//        // Use XCTAssert and related functions to verify your tests produce the correct
//        // results.
//        XCTAssertEqual(MyLibrary().text, "Hello, World!")
//    }
    
    func test_Bool_init_validBits() throws {
        if let boolFromTrueBit = Bool(bit: 1) {
            XCTAssertTrue(boolFromTrueBit)
        } else {
            XCTFail()
        }
        
        let boolFromFalseBit = try XCTUnwrap(Bool(bit: 0))
        XCTAssertFalse(boolFromFalseBit)
    }
    
    func test_Bool_init_invalidBits() {
        XCTAssertNil(Bool(bit: -1))
        XCTAssertNil(Bool(bit: 2))
        XCTAssertNil(Set<CGFloat>().sum)
        
        let oneThird = 1.0/3
//        let thirdSum = Array(repeating: oneThird, count: 30).sum
//        XCTAssertEqual(thirdSum, 10)
        let thirdSum = Array(repeating: oneThird, count: 300).sum
        XCTAssertEqual(
            try XCTUnwrap(thirdSum), 100, accuracy: pow(0.1, 12))
    }
    
    func test_validBits() throws {
        let boolFromFalseBit = try XCTUnwrap(Bool(bit: 0))
        XCTAssertFalse(boolFromFalseBit)
        
        let boolFromTrueBit = try XCTUnwrap(Bool(bit: 1))
        XCTAssertTrue(boolFromTrueBit)
    }
    
    func test_invalidBits() throws {
        XCTAssertNil(Bool(bit: -1))
        XCTAssertNil(Bool(bit: 2))
    }
    
    func test_DataByte() throws {
        let data = Data(0...2)
        let falseByte = data[0]
        let boolFromFalseByte = try XCTUnwrap(Bool(bit: falseByte))
        XCTAssertFalse(boolFromFalseByte)
        
        let trueByte = data[1]
        let boolFromTrueByte = try XCTUnwrap(Bool(bit: trueByte))
        XCTAssertTrue(boolFromTrueByte)
        
        let invalidByte = data[2]
        XCTAssertNil(Bool(bit: invalidByte))
    }
}
