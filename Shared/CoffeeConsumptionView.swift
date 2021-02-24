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
        VStack {
            Text("Do you like ☕️?")
                .textWithBackground()
                .padding(.bottom)
            
            Text("Keep track of how much coffee you drink")
                .textWithBackground()
                .padding(.bottom)
            
            Text(coffeeCounter < 0 ? "No coffees today" : (coffeeCounter == 1 ? "\(coffeeCounter) coffee today" : "\(coffeeCounter) coffees today"))
                .textWithBackground()
            
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
