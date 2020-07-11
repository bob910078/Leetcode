//
//  66. Plus One.swift
//  Leetcode
//
//  Created by bobchang on 2020/7/11.
//  Copyright © 2020 Blasphmy. All rights reserved.
//

import Foundation

/**
 66. Plus One
 
 Given a non-empty array of digits representing a non-negative integer, increment one to the integer.

 The digits are stored such that the most significant digit is at the head of the list, and each element in the array contains a single digit.

 You may assume the integer does not contain any leading zero, except the number 0 itself.
 */

func plusOne(_ digits: [Int]) -> [Int] {
    var arr = digits
    var index = digits.count-1
    if arr[index] + 1 < 10 {
        arr[index] += 1
        return arr
    }
    var carry = 1
    while carry > 0 {
        if index < 0 {
            return [carry] + arr
        }
        let sum = arr[index] + carry
        arr[index] = sum % 10
        carry = sum / 10
        index -= 1
    }
    return arr
}
