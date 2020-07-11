//
//  Test Pow(x, n).swift
//  LeetcodeTests
//
//  Created by bobchang on 2020/7/11.
//  Copyright © 2020 Blasphmy. All rights reserved.
//

import XCTest

class Test_Pow_x__n_: XCTestCase {
    
    func test1() {
        let output = myPow(2.00000, 10)
        let ans = 1024.00000
        XCTAssertEqual(output, ans)
    }
    
    func test2() {
        let output = myPow(2.10000, 3)
        let ans = 9.26100
        XCTAssertEqual(output, ans, accuracy: 0.000001)
    }
    
    func test3() {
        let output = myPow(2.00000, -2)
        let ans = 0.25000
        XCTAssertEqual(output, ans)
    }
    
    func test4() {
        let output = myPow(-2.00000, 2)
        let ans = 4.00000
        XCTAssertEqual(output, ans)
    }
    
    func test5() {
        let output = recusionPow(0.00001, 2147483647)
        let ans = 0.0
        XCTAssertEqual(output, ans)
    }
    
    func test6() {
        let output = recusionPow(-2.00000, 2)
        let ans = 4.00000
        XCTAssertEqual(output, ans)
    }
    
    func test7() {
        let output = recusionPow(2.10000, 3)
        let ans = 9.26100
        XCTAssertEqual(output, ans, accuracy: 0.000001)
    }
    
}
