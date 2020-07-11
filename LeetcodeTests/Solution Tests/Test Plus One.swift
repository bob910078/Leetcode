//
//  Test Plus One.swift
//  LeetcodeTests
//
//  Created by bobchang on 2020/7/11.
//  Copyright © 2020 Blasphmy. All rights reserved.
//

import XCTest

class Test_Plus_One: XCTestCase {
    
    func test1() {
        let input = [1,2,3]
        let output = plusOne(input)
        let ans = [1,2,4]
        XCTAssertEqual(output, ans)
    }
    
    func test2() {
        let input = [4,3,2,1]
        let output = plusOne(input)
        let ans = [4,3,2,2]
        XCTAssertEqual(output, ans)
    }
    
    func test3() {
        let input = [9]
        let output = plusOne(input)
        let ans = [1,0]
        XCTAssertEqual(output, ans)
    }
    

}
