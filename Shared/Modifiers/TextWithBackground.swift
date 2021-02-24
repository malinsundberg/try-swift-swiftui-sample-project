//
//  TextWithBackground.swift
//  Coffee Counter (iOS)
//
//  Created by Malin Sundberg on 2021-02-21.
//

import SwiftUI

struct TextWithBackground: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(Font.callout.bold())
            .foregroundColor(.white)
            .padding(.vertical, 2)
            .padding(.horizontal, 12)
            .background(RoundedRectangle(cornerRadius: 5, style: .continuous).fill(Color.CoffeeCounter.primary))
    }
}

extension Text {
    func textWithBackground() -> some View {
        modifier(TextWithBackground())
    }
}
