//
//  main.swift
//  226. Invert Binary Tree
//
//  Created by 吴书敏 on 2018/2/23.
//  Copyright © 2018年 吴书敏. All rights reserved.
//

// 反转二叉树

import Foundation

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}

/*
 Invert a binary tree.
 
      4
    /   \
   2     7
  / \   / \
 1   3 6   9
 
      to
 
       4
     /   \
    7     2
   / \   / \
  9   6 3   1
 
 */

class Solution {
    func invertTree(_ root: TreeNode?) -> TreeNode? {
        if root == nil {
            return nil
        } else {
            let left = invertTree(root?.left)
            let right = invertTree(root?.right)
            root?.left = right
            root?.right = left
            return root;
        }
    }
    
    
    func invertTree2(_ root: TreeNode?) -> TreeNode? {
        if root == nil {
            return nil
        } else {
            let temp = root?.left
            root?.left = root?.right
            root?.right = temp
            invertTree2(root?.left)
            invertTree2(root?.right)
            return root;
        }
    }
}








