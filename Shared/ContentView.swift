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
        }
        #endif
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
