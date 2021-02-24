//
//  CoffeeCounterView.swift
//  Coffee Counter (iOS)
//
//  Created by Malin Sundberg on 2021-02-21.
//

import SwiftUI

struct CoffeeConsumptionView: View {
    @State private var coffeeCounter = 0
    
    var body: some View {
        VStack(alignment: .leading) {
            InfoTextView(title: "Coffee consumption at a glance", subtitle: "See how much coffee you're drinking")
            
            ChartViewWithAxes(xAxisDescription: "Past 5 days", yAxisDescription: "Coffees")
                .frame(maxHeight: 400)
            
            Text("Coffee Consumption:")
                .textWithBackground()
            
            TitleWithSubtitleView(title: coffeeCounter == 0 ? "No coffee today" : (coffeeCounter == 1 ? "\(coffeeCounter) coffee today" : "\(coffeeCounter) coffees today"), subtitle: "Wednesday 24th")
            
            Spacer()
            
            Button("Coffee Time!") {
                coffeeCounter += 1
            }.buttonStyle(StylishButtonStyle())
        }.navigationTitle("Coffee Counter")
        .padding()
    }
}

struct CoffeeConsumptionView_Previews: PreviewProvider {
    static var previews: some View {
        CoffeeConsumptionView()
    }
}
