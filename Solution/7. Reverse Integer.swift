//
//  7. Reverse Integer.swift
//  Leetcode
//
//  Created by bobchang on 2020/7/11.
//  Copyright © 2020 Blasphmy. All rights reserved.
//

import Foundation

/**
 7. Reverse Integer
 
 Given a 32-bit signed integer, reverse digits of an integer.
 
 Note:
 Assume we are dealing with an environment which could only store integers within
 the 32-bit signed integer range: [−2^31,  2^31 − 1]. For the purpose of this problem,
 assume that your function returns 0 when the reversed integer overflows.
 */

func reverse(_ x: Int) -> Int {
    
    let str = String(String(abs(x)).reversed())
    let ret = Int(str)!
    
    if ret < Int32.min {
        return 0
    }
    if ret > Int32.max {
        return 0
    }
    
    if x < 0 {
        return -ret
    } else {
        return ret
    }
    
}

