//
//  0055. Jump Game.swift
//  TopInterviewLeetCodes
//
//  Created by Heena Beriya on 18.02.24.
//
// Link - https://leetcode.com/problems/jump-game/?envType=study-plan-v2&envId=top-interview-150
    

class Solution_0055 {
    
    func canJump(_ nums: [Int]) -> Bool {
         if nums.isEmpty || nums.count == 1 { return true }

        var reachable = 0 // Tracks farthest reachable index

        for i in 0..<nums.count - 1 {
            if reachable < i { return false } // Cannot reach current index
            reachable = max(reachable, i + nums[i])
        }

        // Check if the last index is reachable
        return reachable >= nums.count - 1
    }
    
}
