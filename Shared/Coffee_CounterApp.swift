//
//  Coffee_CounterApp.swift
//  Shared
//
//  Created by Malin Sundberg on 2021-02-21.
//

#if os(macOS)
import AppKit
#endif
import SwiftUI

@available(macOS 11.0, iOS 14.0, *)
struct Coffee_CounterApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

@main
struct Coffee_CounterAppWrapper {
    static func main() {
        if #available(macOS 11.0, iOS 14.0, *) {
            Coffee_CounterApp.main()
        } else {
            #if os(macOS)
            let app = NSApplication.shared
            let appDelegate = AppDelegate()
            app.delegate = appDelegate
            _ = NSApplicationMain(CommandLine.argc, CommandLine.unsafeArgv)
            #endif
        }
    }
}
