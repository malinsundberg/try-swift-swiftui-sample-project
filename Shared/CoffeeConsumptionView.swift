//
//  CoffeeCounterView.swift
//  Coffee Counter (iOS)
//
//  Created by Malin Sundberg on 2021-02-21.
//

import SwiftUI

struct CoffeeConsumptionView: View {
    @State private var chartValues = ChartValue.chartSampleValues
    @State private var selectedID: ChartValue.ID? = nil
    
    var body: some View {
        VStack(alignment: .leading) {
            InfoTextView(title: "Coffee consumption at a glance", subtitle: "See how much coffee you're drinking")
            
            ChartViewWithAxes(xAxisDescription: "Past 5 days", yAxisDescription: "Coffees", chartValues: chartValues, selectedID: $selectedID)
                .frame(maxHeight: 400)
            
            Text("Coffee Consumption:")
                .textWithBackground()
            
            if let selectedID = selectedID, let value = chartValues.first(where: { $0.id == selectedID })?.value {
                TitleWithSubtitleView(title: value == 0 ? "No coffee" : (value == 1 ? "\(value) coffee" : "\(value) coffees"), subtitle: "On selected day")
            } else {
                TitleWithSubtitleView(title: "No day selected", subtitle: "Select the day you want to see details for")
            }
            
            Spacer()
            
            Button("Coffee Time!") {
                incrementCoffeeCount()
            }.buttonStyle(StylishButtonStyle())
        }.navigationTitle("Coffee Counter")
        .padding()
    }
    
    private func incrementCoffeeCount() {
        let last = chartValues.count - 1
        let newValue = chartValues[last].value + 1
        let id = chartValues[last].id
        withAnimation {
            chartValues[last] = ChartValue(id: id, value: newValue)
        }
    }
}

struct CoffeeConsumptionView_Previews: PreviewProvider {
    static var previews: some View {
        CoffeeConsumptionView()
    }
}
