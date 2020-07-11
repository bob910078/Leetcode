//
//  Test Maximum Subarray.swift
//  LeetcodeTests
//
//  Created by bobchang on 2020/7/11.
//  Copyright © 2020 Blasphmy. All rights reserved.
//

import XCTest

class Test_Maximum_Subarray: XCTestCase {

    
    func testMaxSubArray1() {
        let input = [-2,1,-3,4,-1,2,1,-5,4]
        let output = maxSubArray(input)
        let ans = 6
        XCTAssertEqual(output, ans)
    }
    
    func testMaxSubArray2() {
        let input = [1]
        let output = maxSubArray(input)
        let ans = 1
        XCTAssertEqual(output, ans)
    }
    
    func testMaxSubArray3() {
        let input = [-2, 1]
        let output = maxSubArray(input)
        let ans = 1
        XCTAssertEqual(output, ans)
    }
    
    func testMaxSubArray4() {
        let input = [-2, -1]
        let output = maxSubArray(input)
        let ans = -1
        XCTAssertEqual(output, ans)
    }
    
    
}
