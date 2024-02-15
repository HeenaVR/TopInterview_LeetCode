//
//  0080. Remove Duplicates from Sorted Array II.swift
//  TopInterviewLeetCodes
//
//  Created by Heena Beriya on 06.02.24.
//

//[1 1 2]

class Solution_0080 {
    
    func removeDuplicates_0080(_ nums: inout [Int]) -> Int {
        
        // Two-pointer approach with O(1) extra space

        var j = 1 // Pointer to the next position for unique or second occurrence
        var count = 1 // Counts occurrences of the current element

        for i in 1..<nums.count {
            if nums[i] == nums[i - 1] {
                count += 1
            } else {
                count = 1 // Reset count for new element
            }

            // Place element if unique or has two occurrences
            if count <= 2 {
                nums[j] = nums[i]
                j += 1
            }
        }
        
        return j // Return number of unique/twice-occurring elements
    }
    
}
