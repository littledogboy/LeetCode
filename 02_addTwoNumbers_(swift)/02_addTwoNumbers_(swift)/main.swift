//
//  main.swift
//  02_addTwoNumbers_(swift)
//
//  Created by 吴书敏 on 2018/2/22.
//  Copyright © 2018年 吴书敏. All rights reserved.
//

import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

/* 2. Add Two Numbers
 You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order and each of their nodes contain a single digit. Add the two numbers and return it as a linked list.
 
 You may assume the two numbers do not contain any leading zero, except the number 0 itself.
 
 Example:
 
 Input: (2 -> 4 -> 3) + (5 -> 6 -> 4)
 Output: 7 -> 0 -> 8
 Explanation: 342 + 465 = 807.
 */

class Solution {
    var upNumber = 0
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        if l1 == nil && l2 == nil {
            if upNumber == 0 {
                return nil
            } else {
                upNumber = 0
                return ListNode(1)
            }
        } else {
            let tempNode = ListNode(0)
            var result = ((l1 != nil) ? l1!.val : 0 ) + ((l2 != nil) ? l2!.val : 0) + upNumber
            if result >= 10 {
                result = result - 10
                upNumber = 1
            } else {
                upNumber = 0;
            }
            tempNode.val = result;
            tempNode.next = addTwoNumbers(l1?.next, l2?.next);
            return tempNode;
        }
    }
}

//let num1Gewei = ListNode(2)
//let num1Shiwei = ListNode(4)
//let num1Baiwei = ListNode(3)
//
//let num2Gewei = ListNode(5)
//let num2Shiwei = ListNode(6)
//let num2Baiwei = ListNode(4)
//
//num1Shiwei.next = num1Baiwei
//num1Gewei.next = num1Shiwei
//
//num2Shiwei.next = num2Baiwei
//num2Gewei.next = num2Shiwei


let solution = Solution()


//var resultNode:ListNode? = solution.addTwoNumbers(num1Gewei, num2Gewei)

//print(resultNode?.val, resultNode?.next?.val, resultNode?.next?.next?.val)

//let num3Gewei = ListNode(1)
//let num3Shiwei = ListNode(8)
//let num4Gewei = ListNode(0)
//num3Gewei.next = num3Shiwei

let num3Gewei = ListNode(9)
let num4Gewei = ListNode(9)

var result = solution.addTwoNumbers(num3Gewei, num4Gewei)
 
print("\(result?.val) \(result?.next?.val)")
