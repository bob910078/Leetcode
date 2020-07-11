//
//  Test Integer to Roman.swift
//  LeetcodeTests
//
//  Created by bobchang on 2020/7/11.
//  Copyright © 2020 Blasphmy. All rights reserved.
//

import XCTest

class Test_Integer_to_Roman: XCTestCase {
    
    func test1() {
        let input = 3
        let output = intToRoman(input)
        let ans = "III"
        XCTAssertEqual(output, ans)
    }
    
    func test2() {
        let input = 4
        let output = intToRoman(input)
        let ans = "IV"
        XCTAssertEqual(output, ans)
    }
    
    func test3() {
        let input = 9
        let output = intToRoman(input)
        let ans = "IX"
        XCTAssertEqual(output, ans)
    }
    
    func test4() {
        let input = 58
        let output = intToRoman(input)
        let ans = "LVIII"
        XCTAssertEqual(output, ans)
    }
    
    func test5() {
        let input = 1994
        let output = intToRoman(input)
        let ans = "MCMXCIV"
        XCTAssertEqual(output, ans)
    }
    
    func test6() {
        let input = 28
        let output = intToRoman(input)
        let ans = "XXVIII"
        XCTAssertEqual(output, ans)
    }
    
    func test7() {
        let input = 19
        let output = intToRoman(input)
        let ans = "XIX"
        XCTAssertEqual(output, ans)
    }
    
    func test8() {
        let input = 99
        let output = intToRoman(input)
        let ans = "XCIX"
        XCTAssertEqual(output, ans)
    }
    
    func test9() {
        let input = 89
        let output = intToRoman(input)
        let ans = "LXXXIX"
        XCTAssertEqual(output, ans)
    }
    
    
}
