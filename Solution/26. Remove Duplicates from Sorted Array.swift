//
//  26. Remove Duplicates from Sorted Array.swift
//  Leetcode
//
//  Created by bobchang on 2020/7/11.
//  Copyright © 2020 Blasphmy. All rights reserved.
//

import Foundation

/**
 26. Remove Duplicates from Sorted Array
 
 Given a sorted array nums, remove the duplicates in-place such that each element appear only once and return the new length.

 Do not allocate extra space for another array, you must do this by modifying the input array in-place with O(1) extra memory.
 */

func removeDuplicates(_ nums: inout [Int]) -> Int {
    
    if nums.count <= 0 { return 0 }
    
    var carry: Int = 1
    var current: Int = nums[0]
    for i in 1..<nums.count where nums[i] > current {
        current = nums[i]
        nums.swapAt(i, carry)
        carry += 1
    }
    return carry
}
