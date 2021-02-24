//
//  ChartBar.swift
//  Coffee Counter (iOS)
//
//  Created by Malin Sundberg on 2021-02-22.
//

import SwiftUI

struct ChartBar: View {
    let value: CGFloat
    
    let isSelected: Bool
    
    private var opacity: Double {
        isSelected ? 1 : 0.7
    }
    
    private var scale: CGFloat {
        isSelected ? 1.025 : 1
    }
    
    var body: some View {
        GeometryReader { geometryReader in
            RoundedCornerRectangle(topLeft: 10, topRight: 10, bottomLeft: 0, bottomRight: 0)
                .fill(Constants.linearGradient)
                .padding(.top, geometryReader.size.height - (value * geometryReader.size.height))
                .opacity(opacity)
                .scaleEffect(scale, anchor: .bottom)
        }
    }
}

struct ChartBar_Previews: PreviewProvider {
    static var previews: some View {
        ChartBar(value: 0.7, isSelected: false)
    }
}
