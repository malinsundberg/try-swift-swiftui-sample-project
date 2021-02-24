//
//  StylishButtonStyle.swift
//  Coffee Counter (iOS)
//
//  Created by Malin Sundberg on 2021-02-22.
//

import SwiftUI

struct StylishButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(Font.headline.bold())
            .foregroundColor(.white)
            .frame(maxWidth: .infinity)
            .padding(.horizontal)
            .padding(.vertical, 14)
            .background(RoundedRectangle(cornerRadius: 10, style: .continuous)
                            .fill(LinearGradient(gradient: Gradient(colors: [Color.CoffeeCounter.secondary, Color.CoffeeCounter.primary, Color.CoffeeCounter.tertiary]), startPoint: .leading, endPoint: .trailing)))
            .overlay(RoundedRectangle(cornerRadius: 10, style: .continuous)
                        .strokeBorder(Color.CoffeeCounter.outline, lineWidth: 1))
            .overlay(configuration.isPressed ? RoundedRectangle(cornerRadius: 10, style: .continuous)
                        .fill(Color.CoffeeCounter.buttonInteraction) : nil)
        
    }
}
