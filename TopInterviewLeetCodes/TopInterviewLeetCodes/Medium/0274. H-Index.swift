//
//  0274. H-Index.swift
//  TopInterviewLeetCodes
//
//  Created by Heena Beriya on 24.02.24.
//
// Link - https://leetcode.com/problems/h-index/?envType=study-plan-v2&envId=top-interview-150

class Solution_0274 {
    
    func hIndex(_ citations: [Int]) -> Int {
        guard !citations.isEmpty else { return 0 } // handle empty array

        let sortedCitations = citations.sorted(by: >) // sort in descending order

        for (index, citationsCount) in sortedCitations.enumerated() {
            if index + 1 > citationsCount { // h-index found
             return index
         }
    }

         // all papers cited at least once (corner case)
         return citations.count
    }
    
}
