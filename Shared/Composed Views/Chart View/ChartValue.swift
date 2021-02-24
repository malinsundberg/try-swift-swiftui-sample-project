//
//  ChartValue.swift
//  Coffee Counter
//
//  Created by Malin Sundberg on 2021-02-21.
//

import SwiftUI

struct ChartValue: Identifiable {
    let id: UUID
    var value: Int
    
    init(id: UUID = UUID(), value: Int) {
        self.id = id
        self.value = value
    }
}

extension ChartValue {
    static let chartSampleValues = [ChartValue(value: 2), ChartValue(value: 1), ChartValue(value: 3), ChartValue(value: 2), ChartValue(value: 0)]
}
