//
//  0027. Remove Element.swift
//  TopInterviewLeetCodes
//
//  Created by Heena Beriya on 18.02.24.
//
// Link - https://leetcode.com/problems/remove-element/submissions/1166961554/?envType=study-plan-v2&envId=top-interview-150

class Solution_0027 {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
    var currentIndex = 0

    for arrayIndex in 0..<nums.count {
        if nums[arrayIndex] != val {
            // Swap current element with slow pointer if different
            if arrayIndex != currentIndex {
                nums.swapAt(arrayIndex, currentIndex)
            }
            currentIndex += 1
        }
    }

    return currentIndex
    }
}
