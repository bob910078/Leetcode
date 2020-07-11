//
//  12. Integer to Roman.swift
//  Leetcode
//
//  Created by bobchang on 2020/7/11.
//  Copyright © 2020 Blasphmy. All rights reserved.
//

import Foundation

/**
 12. Integer to Roman
 
 Roman numerals are represented by seven different symbols: `I`, `V`, `X`, `L`, `C`, `D` and `M`.
 
 For example, two is written as `II` in Roman numeral, just two one's added together. Twelve is written as, `XII`, which is simply `X` + `II`. The number twenty seven is written as `XXVII`, which is `XX` + `V` + `II`.

 Roman numerals are usually written largest to smallest from left to right. However, the numeral for four is not IIII. Instead, the number four is written as IV. Because the one is before the five we subtract it making four. The same principle applies to the number nine, which is written as IX. There are six instances where subtraction is used:

 - `I` can be placed before V (5) and X (10) to make 4 and 9.
 - `X` can be placed before L (50) and C (100) to make 40 and 90.
 - `C` can be placed before D (500) and M (1000) to make 400 and 900.
 
 Given an integer, convert it to a roman numeral. Input is guaranteed to be within the range from 1 to 3999.
 
 */

func intToRoman(_ num: Int) -> String {
    
    let v1 = ["", "M", "MM", "MMM"]
    let v2 = ["", "C", "CC", "CCC", "CD", "D", "DC", "DCC", "DCCC", "CM"]
    let v3 = ["", "X", "XX", "XXX", "XL", "L", "LX", "LXX", "LXXX", "XC"]
    let v4 = ["", "I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX"]
    
    return v1[num / 1000] + v2[(num % 1000) / 100] + v3[(num % 100) / 10] + v4[num % 10];
}
