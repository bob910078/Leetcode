//
//  Test Add Two Numbers.swift
//  LeetcodeTests
//
//  Created by bobchang on 2020/7/11.
//  Copyright © 2020 Blasphmy. All rights reserved.
//

import XCTest

class Test_Add_Two_Numbers: XCTestCase {
    
    func test1() {
        let a = ListNode(2, ListNode(4, ListNode(3)))
        let b = ListNode(5, ListNode(6, ListNode(4)))
        let output = addTwoNumbers(a, b)
        let ans: ListNode? = ListNode(7, ListNode(0, ListNode(8)))
        XCTAssertEqual(output, ans)
    }
    
    func test2() {
        let a = ListNode(0)
        let b = ListNode(0)
        let output = addTwoNumbers(a, b)
        let ans: ListNode? = ListNode(0)
        XCTAssertEqual(output, ans)
    }
    
    func test3() {
        let a = ListNode(5)
        let b = ListNode(5)
        let output = addTwoNumbers(a, b)
        let ans: ListNode? = ListNode(0, ListNode(1))
        XCTAssertEqual(output, ans)
    }
    
    func test4() {
        let a = ListNode(1, ListNode(8))
        let b = ListNode(0)
        let output = addTwoNumbers(a, b)
        let ans: ListNode? = ListNode(1, ListNode(8))
        XCTAssertEqual(output, ans)
    }
    

}
