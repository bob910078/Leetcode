//
//  2. Add Two Numbers.swift
//  Leetcode
//
//  Created by bobchang on 2020/7/11.
//  Copyright © 2020 Blasphmy. All rights reserved.
//

import Foundation

/**
 2. Add Two Numbers
 
 You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order and each of their nodes contain a single digit. Add the two numbers and return it as a linked list.

 You may assume the two numbers do not contain any leading zero, except the number 0 itself.
 */

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

extension ListNode: Equatable {
    public static func == (lhs: ListNode, rhs: ListNode) -> Bool {
        let con1 = lhs.val == rhs.val
        let con2 = lhs.next == rhs.next
        return con1 && con2
    }
}

func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    let dummy = ListNode(0)
    var d1 = l1, d2 = l2, ptr: ListNode? = dummy
    var carry: Int = 0
    while (d1 != nil) || (d2 != nil) || (carry > 0) {
        let num1 = d1?.val ?? 0
        let num2 = d2?.val ?? 0
        let sum = carry + num1 + num2
        ptr?.next = ListNode(sum%10)
        carry = sum / 10        // 考慮進位
        ptr = ptr?.next
        d1 = d1?.next
        d2 = d2?.next
    }
    return dummy.next
}
