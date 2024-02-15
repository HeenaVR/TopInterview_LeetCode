//
//  0121. Best Time to Buy and Sell Stock.swift
//  TopInterviewLeetCodes
//
//  Created by Heena Beriya on 08.02.24.
//
// Link - https://leetcode.com/problems/best-time-to-buy-and-sell-stock/description/?envType=study-plan-v2&envId=top-interview-150

class Solution_0121 {
    
    func maxProfit(_ prices: [Int]) -> Int {
        if prices.isEmpty || prices.count == 1 { return 0 }

          var maxProfit = 0
          var minPrice = Int.max

          for price in prices {
            minPrice = min(minPrice, price)
            maxProfit = max(maxProfit, price - minPrice)
          }

          return maxProfit
    }
    
}
