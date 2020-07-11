//
//  Test Maximum Depth of Binary Tree.swift
//  LeetcodeTests
//
//  Created by bobchang on 2020/7/11.
//  Copyright © 2020 Blasphmy. All rights reserved.
//

import XCTest

class Test_Maximum_Depth_of_Binary_Tree: XCTestCase {
    
    func test1() {
        let input = TreeNode(3, TreeNode(9), TreeNode(20, TreeNode(15), TreeNode(17)) )
        let output = maxDepth(input)
        let ans = 3
        XCTAssertEqual(output, ans)
    }
    
}
