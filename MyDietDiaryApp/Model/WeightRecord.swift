//
//  WeightRecord.swift
//  MyDietDiaryApp
//
//  Created by 住田雅隆 on 2022/01/15.
//

import Foundation
import RealmSwift

class WeightRecord: Object {
    override static func primaryKey() -> String? {
        return "id"
    }
    @objc dynamic var id: String = UUID().uuidString
    @objc dynamic var date: Date = Date()
    @objc dynamic var weight: Double = 0
}
