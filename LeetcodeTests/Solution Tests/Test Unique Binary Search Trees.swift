//
//  Test Unique Binary Search Trees.swift
//  LeetcodeTests
//
//  Created by bobchang on 2020/7/11.
//  Copyright © 2020 Blasphmy. All rights reserved.
//

import XCTest

class Test_Unique_Binary_Search_Trees: XCTestCase {
    
    func test1() {
        let output = numTrees(3)
        let ans = 5
        XCTAssertEqual(output, ans)
    }
    
    func test2() {
        let output = numTrees(1)
        let ans = 1
        XCTAssertEqual(output, ans)
    }
    
    func test3() {
        let output = numTrees(2)
        let ans = 2
        XCTAssertEqual(output, ans)
    }
    
    func test4() {
        let output = numTrees(4)
        let ans = 14
        XCTAssertEqual(output, ans)
    }
    
    func test5() {
        let output = numTrees(5)
        let ans = 42
        XCTAssertEqual(output, ans)
    }
    
    func test6() {
        let output = numTrees(10)
        let ans = 16796
        XCTAssertEqual(output, ans)
    }
    
    func test7() {
        let output = numTreesBottomUp(5)
        let ans = 42
        XCTAssertEqual(output, ans)
    }
    
    func test8() {
        let output = numTreesBottomUp(10)
        let ans = 16796
        XCTAssertEqual(output, ans)
    }
    
    func test9() {
        let output = numTreesBottomUp(23)
        let ans = 343059613650
        XCTAssertEqual(output, ans)
    }
    
}
