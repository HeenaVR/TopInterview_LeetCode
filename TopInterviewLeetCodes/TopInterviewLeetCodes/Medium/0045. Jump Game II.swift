//
//  0045. Jump Game II.swift
//  TopInterviewLeetCodes
//
//  Created by Heena Beriya on 19.02.24.
//
// Link - https://leetcode.com/problems/jump-game-ii/description/

class Solution_0045 {
    
    func jump(_ nums: [Int]) -> Int {
        
        var steps = 0
        var currentInd = 0
        var reachableInd = 0
        
        for i in 0..<nums.count - 1 {
            reachableInd = max(reachableInd,
                               i + nums[i])
            
            if i == currentInd {
                steps += 1
                currentInd = reachableInd
            }
        }
        
        return steps
    }
    
}
