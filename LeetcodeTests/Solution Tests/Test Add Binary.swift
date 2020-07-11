//
//  Test Add Binary.swift
//  LeetcodeTests
//
//  Created by bobchang on 2020/7/11.
//  Copyright © 2020 Blasphmy. All rights reserved.
//

import XCTest

class Test_Add_Binary: XCTestCase {
    
    func testAddBinary1() {
        let a = "11"
        let b = "1"
        let output = addBinary(a, b)
        let ans = "100"
        XCTAssertEqual(output, ans)
    }
    
    func testAddBinary2() {
        let a = "1010"
        let b = "1011"
        let output = addBinary(a, b)
        let ans = "10101"
        XCTAssertEqual(output, ans)
    }
    
}
