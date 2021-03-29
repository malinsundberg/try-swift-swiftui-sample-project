//
//  CoffeeConsumptionView.swift
//  Coffee Counter (iOS)
//
//  Created by Malin Sundberg on 2021-03-28.
//

import SwiftUI

struct CoffeeConsumptionView: View {
    var body: some View {
        VStack {
            Text("Do you like ☕️?")
                .padding()
            
            Text("Keep track of how much coffee you drink")
                .padding()
            
            Button("Coffee Time!") {}
                .padding()
        }
    }
}

struct CoffeeConsumptionView_Previews: PreviewProvider {
    static var previews: some View {
        CoffeeConsumptionView()
    }
}
