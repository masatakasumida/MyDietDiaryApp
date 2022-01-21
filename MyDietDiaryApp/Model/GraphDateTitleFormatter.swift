//
//  GraphDateTitleFormatter.swift
//  MyDietDiaryApp
//
//  Created by 住田雅隆 on 2022/01/20.
//

import Foundation
import Charts

class GraphDateTitleFormatter: IAxisValueFormatter {
    var dateList: [Date] = []
    
    func stringForValue(_ value: Double, axis: AxisBase?) -> String {
        let index = Int(value)
        guard dateList.count > index else { return"" }
        let targetDate = dateList[index]
        let formatter = DateFormatter()
        let dateFormatString = "M/d"
        formatter.dateFormat = dateFormatString
        return formatter.string(from: targetDate)
    }
}
