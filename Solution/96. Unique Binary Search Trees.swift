//
//  96. Unique Binary Search Trees.swift
//  Leetcode
//
//  Created by bobchang on 2020/7/11.
//  Copyright © 2020 Blasphmy. All rights reserved.
//

import Foundation

/**
 96. Unique Binary Search Trees
 
 Given n, how many structurally unique BST's (binary search trees) that store values 1 ... n?
 */

func numTrees(_ n: Int) -> Int {
    
    guard n > 1 else { return 1 }
    
    let lastNum = n-1
    
    return (0...lastNum).reduce(0, { (sum, current) in
        sum + numTrees(current) * numTrees(lastNum - current)
    })
    
}

func numTreesDynamicProgramming(_ n: Int) -> Int {
    
    guard n > 1 else { return 1 }
    
    var bottom_up = Array<Int>.init(repeating: 0, count: n+1)
    bottom_up[0] = 1
    bottom_up[1] = 1
    
    for bottom_up_index in 2...n {
        let upper = bottom_up_index-1
        for current in 0...upper {
            bottom_up[bottom_up_index] += bottom_up[current] * bottom_up[upper - current]
        }
    }
    
    return bottom_up[n]
}


/**
 
 解題思路：
 
 > 以k為根所形成的BST，其左子樹所有的node必定小於k，同理，右子樹所有的node必定大於k。
  
 --->  定義 DP[i] 為：擁有 i 個 node(1…i) 的 BST 總共可以對應到幾種排法
 
 - DP[0] = 1
 
 - DP[1] = DP[0] * DP[0]
 
 - DP[2] = DP[0] * DP[1]  +
          DP[1] * DP[0]
 
 - DP[3] = DP[0] * DP[2] +
          DP[1] * DP[1] +
          DP[2] * DP[0]
 
 - DP[4] = DP[0] * DP[3] +
          DP[1] * DP[2] +
          DP[2] * DP[1] +
          DP[3] * DP[0]
 
 - DP[5] = DP[0] * DP[4] +
          DP[1] * DP[3] +
          DP[2] * DP[2] +
          DP[3] * DP[1] +
          DP[4] * DP[0]
 
    ....
 
 
 
 */
