//
//  Test Triangle.swift
//  LeetcodeTests
//
//  Created by bobchang on 2020/7/12.
//  Copyright © 2020 Blasphmy. All rights reserved.
//

import XCTest

class Test_Triangle: XCTestCase {

    func test1() {
        let input = [
             [2],
            [3,4],
           [6,5,7],
          [4,1,8,3]
        ]
        let output = minimumTotal(input)
        let ans = 11
        XCTAssertEqual(output, ans)
    }
    
    func test2() {
        let input = [
            [-1],
           [2,3],
         [1,-1,-3]
        ]
        let output = minimumTotal(input)
        let ans = -1
        XCTAssertEqual(output, ans)
    }

    
}
