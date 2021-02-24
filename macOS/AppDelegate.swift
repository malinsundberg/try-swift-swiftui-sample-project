//
//  AppDelegate.swift
//  Coffee Counter (macOS)
//
//  Created by Malin Sundberg on 2021-02-21.
//

import Foundation
import Cocoa
import SwiftUI

class AppDelegate: NSObject, NSApplicationDelegate {
    var window: NSWindow!
    
    func applicationDidFinishLaunching(_ notification: Notification) {
        let contentView = ContentView()
        
        window = NSWindow(contentRect: NSRect(x: 0, y: 0, width: 500, height: 600),
                          styleMask: [.titled, .closable, .miniaturizable, .resizable, .fullSizeContentView],
                          backing: .buffered,
                          defer: false)
        window.center()
        window.contentView = NSHostingView(rootView: contentView) // An AppKit view that hosts a SwiftUI view hierarchy
        window.makeKeyAndOrderFront(nil)
        window.backgroundColor = NSColor(named: NSColor.Name("Background Color"))
        window.titleVisibility = .hidden
        window.titlebarAppearsTransparent = true
    }
}
