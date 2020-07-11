//
//  50. Pow(x, n).swift
//  Leetcode
//
//  Created by bobchang on 2020/7/11.
//  Copyright © 2020 Blasphmy. All rights reserved.
//

import Foundation

/**
 50. Pow(x, n)
 
 Implement pow(x, n), which calculates x raised to the power n (xn).
 
 - -100.0 < x < 100.0
 - n is a 32-bit signed integer, within the range [−231, 231 − 1]
 */

func myPow(_ x: Double, _ n: Int) -> Double {
    
    if n == 0 { return 1 }
    if n == 1 { return x }
    
    let base = abs(x), power = abs(n)
    var ret = 1.0
    (1...power).forEach { _ in ret *= base }
    
    if x > 0 {
        if n > 0 {
            return ret
        } else {
            return 1/ret
        }
    } else {
        if n > 0 {
            if n % 2 == 0 {
                return ret
            }
            return -ret
        } else {
            if n % 2 == 0 {
                return (1/ret)
            }
            return -(1/ret)
        }
    }
    
}



func recusionPow(_ x: Double, _ n: Int) -> Double {
    
    func helper(_ x: Double, _ n: Int, _ end: Int) -> Double {
        
        if end == 0 { return 1.0 }
        
        let half = helper(x, n, end/2)
        let doubleHalf = half * half
        
        if end%2 == 0 {
            return doubleHalf
        }
        
        if n < 0 {
            return (1/x) * doubleHalf
        } else {
            return x * doubleHalf
        }
        
    }
    
    return helper(x, n, abs(n))
}
