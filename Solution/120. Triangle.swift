//
//  120. Triangle.swift
//  Leetcode
//
//  Created by bobchang on 2020/7/12.
//  Copyright © 2020 Blasphmy. All rights reserved.
//

import Foundation

/**
 120. Triangle
 
 Given a triangle, find the minimum path sum from top to bottom. Each step you may move to adjacent numbers on the row below.
 
 [
      [2],
     [3,4],
    [6,5,7],
   [4,1,8,3]
 ]
 
 The minimum path sum from top to bottom is `11` (i.e., 2 + 3 + 5 + 1 = 11).
 */

func minimumTotal(_ triangle: [[Int]]) -> Int {
    
    if triangle.count == 0 {
        return 0
    }
    if triangle.count == 1 {
        var minNum = Int.max
        for num in triangle[0] {
            minNum = min(minNum, num)
        }
        return minNum
    }
    
    let rowCount = triangle.count
    var dp = [Int](repeatElement(0, count: rowCount + 1))
    
    for i in stride(from: rowCount - 1, through: 0, by: -1) {
        for j in 0..<triangle[i].count {
            dp[j] = triangle[i][j] + min(dp[j], dp[j + 1])
        }
    }
    
    return dp[0]
}
 
