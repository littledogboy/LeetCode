//
//  main.c
//  1_Two_Sum
//
//  Created by 吴书敏 on 2018/2/21.
//  Copyright © 2018年 吴书敏. All rights reserved.
//

#include <stdio.h>

/*
 Given an array of integers, return indices of the two numbers such that they add up to a specific target.
 
 You may assume that each input would have exactly one solution, and you may not use the same element twice.
 
 Example:
 
 Given nums = [2, 7, 11, 15], target = 9,
 
 Because nums[0] + nums[1] = 2 + 7 = 9,
 return [0, 1].
 */


/**
 * Note: The returned array must be malloced, assume caller calls free().
 */
int* twoSum(int* nums, int numsSize, int target) {
    // malloc
    int *array = malloc(sizeof(int) * 2);
    int oneIndex = 0, twoIndex = 0;
    for (int i = 0; i < numsSize; i++) {
        for (int j = numsSize - 1; j > i; j--) {
            if (nums[i] + nums[j] == target) {
                oneIndex = i;
                twoIndex = j;
            }
        }
    }
    *array = oneIndex;
    *(array + 1) = twoIndex;
    return array;
}

int main(int argc, const char * argv[]) {
    int array[4] = {2, 7, 11, 15};
    int target = 9;
    int *p = twoSum(array, 4, target);
    printf("%d %d\n", *p, *(p + 1));
    return 0;
}
