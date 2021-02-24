//
//  ChartView.swift
//  Coffee Counter (iOS)
//
//  Created by Malin Sundberg on 2021-02-22.
//

import SwiftUI

struct ChartView: View {
    let chartValues: [ChartValue]
    
    @Binding var selectedID: ChartValue.ID?
    
    var body: some View {
        HStack {
            ForEach(Array(chartValues.enumerated()), id: \.offset) { (index, chartValue) in
                ChartBar(value: normalizedValue(for: CGFloat(chartValue.value)), isSelected: chartValue.id == selectedID)
                    .onTapGesture {
                        withAnimation {
                            if selectedID == chartValue.id {
                                selectedID = nil
                            } else {
                                selectedID = chartValue.id
                            }
                        }
                    }
            }
        }
    }
    
    private func normalizedValue(for value: CGFloat) -> CGFloat {
        let highestValue = CGFloat(chartValues.max(by: { $0.value < $1.value })?.value ?? 0)
        return value/highestValue
    }
}

struct ChartView_Previews: PreviewProvider {
    static var previews: some View {
        ChartView(chartValues: ChartValue.chartSampleValues, selectedID: .constant(nil))
    }
}
