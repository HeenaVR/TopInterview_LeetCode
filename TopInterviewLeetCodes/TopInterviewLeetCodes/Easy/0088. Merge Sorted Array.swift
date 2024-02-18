//
//  0088. Merge Sorted Array.swift
//  TopInterviewLeetCodes
//
//  Created by Heena Beriya on 18.02.24.
//
// Link - https://leetcode.com/problems/merge-sorted-array/description/?envType=study-plan-v2&envId=top-interview-150

class Solution_0088 {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var i = m - 1
        var j = n - 1
        var k = nums1.count - 1

        while i >= 0 && j >= 0 {
            if nums1[i] > nums2[j] {
                nums1[k] = nums1[i]
                i -= 1
            } else {
                nums1[k] = nums2[j]
                j -= 1
            }
            k -= 1
        }

        while j >= 0 {
            nums1[k] = nums2[j]
            k -= 1
            j -= 1
        }
    }
}
