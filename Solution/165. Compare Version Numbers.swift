//
//  165. Compare Version Numbers.swift
//  Leetcode
//
//  Created by bobchang on 2020/7/11.
//  Copyright © 2020 Blasphmy. All rights reserved.
//

import Foundation

/**
 165. Compare Version Numbers
 
 Compare two version numbers version1 and version2.
 If `version1 > version2` return 1;
 if `version1 < version2` return -1;
 otherwise return `0`.

 You may assume that the version strings are non-empty and contain only digits and the `.` character.

 The `.` character does not represent a decimal point and is used to separate number sequences.

 For instance, `2.5` is not "two and a half" or "half way to version three", it is the fifth second-level revision of the second first-level revision.

 You may assume the default revision number for each level of a version number to be `0`. For example, version number `3.4` has a revision number of `3` and `4` for its first and second level revision number. Its third and fourth level revision number are both `0`.
 
 */

func compareVersion(_ version1: String, _ version2: String) -> Int {
    
    var v1 = version1.split(separator: "."), v2 = version2.split(separator: ".")
    
    while !v1.isEmpty || !v2.isEmpty {
        
        let num1 = Int(v1.first ?? "0")!
        let num2 = Int(v2.first ?? "0")!
        
        if num1 > num2 {
            return 1
        }
        if num1 < num2 {
            return -1
        }
        
        if !v1.isEmpty {
            v1.removeFirst()
        }
        if !v2.isEmpty {
            v2.removeFirst()
        }
    }
    
    return 0
}
