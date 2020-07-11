//
//  Test Remove Duplicates from Sorted Array.swift
//  LeetcodeTests
//
//  Created by bobchang on 2020/7/11.
//  Copyright © 2020 Blasphmy. All rights reserved.
//

import XCTest

class Test_Remove_Duplicates_from_Sorted_Array: XCTestCase {
    
    func test1() {
        var given = [1,1,2]
        let output = removeDuplicates(&given)
        let ans = [1,2]
        for i in 0..<output {
            XCTAssertEqual(given[i], ans[i])
        }
    }
    
    func test2() {
        var given = [0,0,1,1,1,2,2,3,3,4]
        let output = removeDuplicates(&given)
        let ans = [0, 1, 2, 3, 4]
        for i in 0..<output {
            XCTAssertEqual(given[i], ans[i])
        }
    }
    
    func test3() {
        var given: [Int] = []
        let output = removeDuplicates(&given)
        XCTAssertEqual(output, 0)
    }
    
    func test4() {
        var given: [Int] = [1]
        let output = removeDuplicates(&given)
        let ans = [1]
        for i in 0..<output {
            XCTAssertEqual(given[i], ans[i])
        }
    }
    
    
}
