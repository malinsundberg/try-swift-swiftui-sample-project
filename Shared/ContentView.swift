//
//  ContentView.swift
//  Shared
//
//  Created by Malin Sundberg on 2021-02-21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        #if os(iOS)
        NavigationView {
            CoffeeConsumptionView()
                .navigationTitle("Coffee Counter")
        }
        #elseif os(macOS)
        CoffeeConsumptionView()
            .padding()
            .frame(minWidth: 500, minHeight: 650)
            .background(Color.CoffeeCounter.background)
        #endif
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
