//
//  0189. Rotate Array.swift
//  TopInterviewLeetCodes
//
//  Created by Heena Beriya on 08.02.24.
//
// Link - https://leetcode.com/problems/rotate-array/description/?envType=study-plan-v2&envId=top-interview-150

class Solution_0189 {
    func rotate(_ nums: inout [Int], _ k: Int) {
        // For empty or single-element arrays
        if nums.isEmpty || k == 0 { return }
        
        // Number of rotations
        let actualRotations = k % nums.count
        
        
        nums.reverse()
        nums[0..<actualRotations].reverse()
        nums[actualRotations...].reverse()
    }
}
