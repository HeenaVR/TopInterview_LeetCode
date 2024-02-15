//
//  0169. Majority Element.swift
//  TopInterviewLeetCodes
//
//  Created by Heena Beriya on 06.02.24.
//
// Link - https://leetcode.com/problems/majority-element/description/?envType=study-plan-v2&envId=top-interview-150

class Solution_0169 {
    
    func majorityElement(_ nums: [Int]) -> Int {
        var candidate = nums[0]
        var count = 1
        
        for num in nums {
            if num == candidate {
                count += 1
            } else {
                count -= 1
                if count == 0 {
                    candidate = num
                    count = 1
                }
            }
        }
        
        return candidate
    }
    
}
