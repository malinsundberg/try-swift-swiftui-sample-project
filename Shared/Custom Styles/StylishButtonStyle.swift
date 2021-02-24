//
//  StylishButtonStyle.swift
//  Coffee Counter (iOS)
//
//  Created by Malin Sundberg on 2021-02-22.
//

import SwiftUI

struct StylishButtonStyle: ButtonStyle {
    #if os(iOS)
    let cornerRadius: CGFloat = 10
    let fill = LinearGradient(gradient: Gradient(colors: [Color.CoffeeCounter.secondary, Color.CoffeeCounter.primary, Color.CoffeeCounter.tertiary]), startPoint: .leading, endPoint: .trailing)
    #elseif os(macOS)
    let cornerRadius: CGFloat = 6
    let fill = Color.CoffeeCounter.primary
    #endif
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(Font.headline.bold())
            .foregroundColor(.white)
            .frame(maxWidth: .infinity)
            .padding(.horizontal)
            .padding(.vertical, 14)
            .background(RoundedRectangle(cornerRadius: cornerRadius, style: .continuous)
                            .fill(fill))
            .overlay(RoundedRectangle(cornerRadius: cornerRadius, style: .continuous)
                        .strokeBorder(Color.CoffeeCounter.outline, lineWidth: 1))
            .overlay(configuration.isPressed ? RoundedRectangle(cornerRadius: cornerRadius, style: .continuous)
                        .fill(Color.CoffeeCounter.buttonInteraction) : nil)
        
    }
}
