//
//  53. Maximum Subarray.swift
//  Leetcode
//
//  Created by bobchang on 2020/7/11.
//  Copyright © 2020 Blasphmy. All rights reserved.
//

import Foundation

/**
 53. Maximum Subarray
 Given an integer array `nums`, find the contiguous subarray (containing at least one number) which has the largest sum and return its sum.
 */

func maxSubArray(_ nums: [Int]) -> Int {
    var max_ending_here = nums[0], max_so_far = nums[0]
    for i in 1..<nums.count {
        let x = nums[i]
        max_ending_here = max(x, max_ending_here + x)
        max_so_far = max(max_so_far, max_ending_here)
    }
    return max_so_far
}
