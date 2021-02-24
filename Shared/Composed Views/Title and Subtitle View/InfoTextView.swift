//
//  InfoTextView.swift
//  Coffee Counter (iOS)
//
//  Created by Malin Sundberg on 2021-02-22.
//

import SwiftUI

struct InfoTextView: View {
    let title: String
    let subtitle: String
    
    var body: some View {
        HStack {
            InfoImage()
            TitleWithSubtitleView(title: title, subtitle: subtitle)
        }
    }
}

struct InfoImage: View {
    var body: some View {
        #if os(iOS)
        Image(systemName: "info.circle")
            .foregroundColor(Color.CoffeeCounter.primary)
            .imageScale(.large)
        #elseif os(macOS)
        if #available(macOS 11.0, *) {
            Image(systemName: "info.circle")
                .foregroundColor(Color.CoffeeCounter.primary)
                .imageScale(.large)
        } else {
            Image(nsImage: NSImage(imageLiteralResourceName: NSImage.infoName))
        }
        #endif
    }
}

struct InfoTextView_Previews: PreviewProvider {
    static var previews: some View {
        InfoTextView(title: "Coffee by day", subtitle: "See how much coffee you drink")
    }
}
