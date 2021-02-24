//
//  LabelStylingExample.swift
//  Coffee Counter (iOS)
//
//  Created by Malin Sundberg on 2021-02-22.
//

import SwiftUI

struct LabelStylingExample: View {
    var body: some View {
        VStack {
            Label("Regular Coffee", systemImage: "flame")
                .padding(.bottom)
            Label("Ice Coffee", systemImage: "snow")
        }.labelStyle(OutstandingLabelStyle())
    }
}

struct LabelStylingExample_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LabelStylingExample()
                .colorScheme(.light)
            LabelStylingExample()
                .background(Color.black)
                .colorScheme(.dark)
        }.previewLayout(.sizeThatFits)
    }
}
