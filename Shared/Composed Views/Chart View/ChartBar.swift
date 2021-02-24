//
//  ChartBar.swift
//  Coffee Counter (iOS)
//
//  Created by Malin Sundberg on 2021-02-22.
//

import SwiftUI

struct ChartBar: View {
    let value: CGFloat
    
    var body: some View {
        GeometryReader { geometryReader in
            RoundedCornerRectangle(topLeft: 10, topRight: 10, bottomLeft: 0, bottomRight: 0)
                .fill(Constants.linearGradient)
                .padding(.top, geometryReader.size.height - (value * geometryReader.size.height))
        }
    }
}

struct ChartBar_Previews: PreviewProvider {
    static var previews: some View {
        ChartBar(value: 0.7)
    }
}
