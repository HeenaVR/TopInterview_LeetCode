//
//  0026 - Remove Duplicates from Sorted Array.swift
//  TopInterviewLeetCodes
//
//  Created by Heena Beriya on 06.02.24.
//

class Solution_0026 {
    
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        
        var updatedArrayIndex = 0

        for i in nums.indices {
            if i > updatedArrayIndex && nums[i] != nums[updatedArrayIndex] {
                updatedArrayIndex += 1
                nums[updatedArrayIndex] = nums[i]
            }
        }
        return updatedArrayIndex + 1

    }
    
}
