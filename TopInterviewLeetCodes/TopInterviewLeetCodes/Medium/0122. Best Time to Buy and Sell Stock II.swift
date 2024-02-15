//
//  0122. Best Time to Buy and Sell Stock II.swift
//  TopInterviewLeetCodes
//
//  Created by Heena Beriya on 15.02.24.
//

class Solution_0122 {
    
    func maxProfit(_ prices: [Int]) -> Int {
        
        guard !prices.isEmpty else { return 0 }

        var maxProfit = 0
        var buyPrice = prices[0] // Initialize min price

        for i in 0..<prices.count {
            let currentPrice = prices[i]
            
            if currentPrice > buyPrice && currentPrice > prices[i - 1] {
                maxProfit += currentPrice - buyPrice
                buyPrice = currentPrice
            }
            else if currentPrice < buyPrice {
                buyPrice = currentPrice
            }
                
        }

        return maxProfit
    }
    
}
