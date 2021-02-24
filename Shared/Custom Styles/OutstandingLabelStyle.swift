//
//  OutstandingLabelStyle.swift
//  Coffee Counter (iOS)
//
//  Created by Malin Sundberg on 2021-02-22.
//

import SwiftUI

struct OutstandingLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack(spacing: 4) {
            configuration.icon
                .foregroundColor(Color.CoffeeCounter.primary)
            configuration.title
                .foregroundColor(.primary)
        }
    }
}
