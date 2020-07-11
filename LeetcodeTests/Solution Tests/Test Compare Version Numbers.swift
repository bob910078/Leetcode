//
//  Test Compare Version Numbers.swift
//  LeetcodeTests
//
//  Created by bobchang on 2020/7/11.
//  Copyright © 2020 Blasphmy. All rights reserved.
//

import XCTest

class Test_Compare_Version_Numbers: XCTestCase {

    func test1() {
        let version1 = "0.1", version2 = "1.1"
        let output = compareVersion(version1, version2)
        let ans = -1
        XCTAssertEqual(output, ans)
    }
    
    func test2() {
        let version1 = "1.0.1", version2 = "1"
        let output = compareVersion(version1, version2)
        let ans = 1
        XCTAssertEqual(output, ans)
    }
    
    func test3() {
        let version1 = "7.5.2.4", version2 = "7.5.3"
        let output = compareVersion(version1, version2)
        let ans = -1
        XCTAssertEqual(output, ans)
    }
    
    func test4() {
        let version1 = "1.01", version2 = "1.001"
        let output = compareVersion(version1, version2)
        let ans = 0
        XCTAssertEqual(output, ans)
    }
    
    func test5() {
        let version1 = "1.0", version2 = "1.0.0"
        let output = compareVersion(version1, version2)
        let ans = 0
        XCTAssertEqual(output, ans)
    }
    
}
