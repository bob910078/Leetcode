//
//  67. Add Binary.swift
//  Leetcode
//
//  Created by bobchang on 2020/7/11.
//  Copyright © 2020 Blasphmy. All rights reserved.
//

import Foundation

/**
 67. Add Binary

 Given two binary strings, return their sum (also a binary string).

 The input strings are both non-empty and contains only characters 1 or 0.
 */

func addBinary(_ a: String, _ b: String) -> String {
    var arrA = a.map({ ($0 == "1") ? 1 : 0 })
    var arrB = b.map({ ($0 == "1") ? 1 : 0 })
    var ret = ""
    var carry = 0
    while arrA.count > 0 || arrB.count > 0 || carry > 0 {
        let num1 = arrA.popLast() ?? 0
        let num2 = arrB.popLast() ?? 0
        let sum = carry + num1 + num2
        let newValue = (sum % 2 == 0) ? "0" : "1"
        ret = newValue + ret
        carry = sum / 2
    }
    return ret.reduce("", { $0 + String($1) })
}
