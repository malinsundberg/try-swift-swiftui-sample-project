//
//  TitleWithSubtitleView.swift
//  Coffee Counter (iOS)
//
//  Created by Malin Sundberg on 2021-02-22.
//

import SwiftUI

struct TitleWithSubtitleView: View {
    let title: String
    let subtitle: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .bold()
            Text(subtitle)
                .font(Font.footnote.weight(.medium))
                .foregroundColor(Color.CoffeeCounter.primary)
        }
    }
}

struct TitleWithSubtitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleWithSubtitleView(title: "Coffee by day", subtitle: "See how much coffee you drink")
    }
}
