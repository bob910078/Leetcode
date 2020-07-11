//
//  Test Reverse Integer.swift
//  LeetcodeTests
//
//  Created by bobchang on 2020/7/11.
//  Copyright © 2020 Blasphmy. All rights reserved.
//

import XCTest

class Test_Reverse_Integer: XCTestCase {
    
    func test1() {
        let input = 123
        let output = reverse(input)
        let ans = 321
        XCTAssertEqual(output, ans)
    }
    
    func test2() {
        let input = -123
        let output = reverse(input)
        let ans = -321
        XCTAssertEqual(output, ans)
    }
    
    func test3() {
        let input = 120
        let output = reverse(input)
        let ans = 21
        XCTAssertEqual(output, ans)
    }
    
    func test4() {
        // 2147483647
        // 1534236469
        let input = 1534236469
        let output = reverse(input)
        let ans = 0
        XCTAssertEqual(output, ans)
    }
    
}
