//
//  main.swift
//  CodeWars : Buying a car
//
//  Created by Tanatip Denduangchai on 8/20/19.
//  Copyright © 2019 Tanatip Denduangchai. All rights reserved.
//

import Foundation

func nbMonths(_ startPriceOld: Int, _ startPriceNew: Int, _ savingPerMonth: Int, _ percentLossByMonth: Double) -> (Int, Int) {
    if startPriceOld >= startPriceNew {                                             //if OldCar is Price Expensive Than NewCar no need to save money
    return (0,(startPriceOld - startPriceNew));
    }
    var month = 0
    var totalsaving:Double = 0
    var oldcar_decrease:Double = Double(startPriceOld)
    var newcar_decrease:Double = Double(startPriceNew)
    var save:Double = Double(savingPerMonth)
    var decrease_Rate:Double = percentLossByMonth
    var moneyleft:Double = 0
    
   while totalsaving+oldcar_decrease < newcar_decrease{
          month += 1
            if month % 2 == 0{
                decrease_Rate += 0.5
          }
          totalsaving += save
          oldcar_decrease -= oldcar_decrease * (decrease_Rate / 100)
          newcar_decrease -= newcar_decrease * (decrease_Rate / 100)
            moneyleft = ((totalsaving+oldcar_decrease) - newcar_decrease)
      }
    return (month,Int((moneyleft).rounded()))
}

//nbMonths(12000, 8000, 1000, 1.5)
//nbMonths(2000,8000, 1000, 1.5)
//nbMonths(2000, 8000, 1000, 1.5)                         //(6, 766)
//nbMonths(12000, 8000, 1000, 1.5)                        //(0, 4000)
//nbMonths(8000, 12000, 500, 1.0)                         //(8, 597)
//nbMonths(18000, 32000, 1500, 1.25)                  //(8, 332)
//nbMonths(7500, 32000, 300, 1.55)                        //(25, 122)
