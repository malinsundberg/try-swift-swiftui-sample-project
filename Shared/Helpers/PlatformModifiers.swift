//
//  PlatformModifiers.swift
//  Coffee Counter
//
//  Created by Malin Sundberg on 2021-02-22.
//

import SwiftUI

extension View {
    @ViewBuilder // A custom parameter attribute that constructs views from closures
    func iOS<Content: View>(_ modifier: (Self) -> Content) -> some View {
        #if os(iOS)
        modifier(self)
        #elseif os(macOS)
        self
        #endif
    }
    
    @ViewBuilder
    func macOS<Content: View>(_ modifier: (Self) -> Content) -> some View {
        #if os(iOS)
        self
        #elseif os(macOS)
        modifier(self)
        #endif
    }
}
