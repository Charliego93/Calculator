//
//  CalculatorApp.swift
//  Shared
//
//  Created by Charlie on 2022/1/18.
//
//import Cocoa
//import SwiftUI
//
//@main
//class AppDelegate: NSObject, NSApplicationDelegate {
//
//    var window: NSWindow!
//
//    func applicationDidFinishLaunching(_ notification: Notification) {
//        let content = ContentView()
//        window = NSWindow(contentRect: NSRect(x: 0, y: 0, width: 500, height: 500), styleMask: [.closable, .miniaturizable, .titled, .fullSizeContentView], backing: .buffered, defer: false)
//        window.center()
//        window.contentView = NSHostingView(rootView: content)
//        window.makeKeyAndOrderFront(self)
//    }
//
//    func applicationWillTerminate(_ notification: Notification) {
//
//    }
//}

import AppKit
import SwiftUI

//final class AppDelegate: NSObject, NSApplicationDelegate {
//    func applicationDidFinishLaunching(_ notification: Notification) {
//        NSWindow.allowsAutomaticWindowTabbing = false
//    }
//}

@main
struct Calculator: App {
    
    var body: some Scene {
        WindowGroup {
            ContentView().frame(width: 700, height: 240)
        }
        .windowStyle(.hiddenTitleBar)
        .commands {
            CommandMenu("Custom Menu") {
                Button("Say Hello") {
                    print("Hello onmyway133")
                }
                .keyboardShortcut("h")
            }
        }

        Settings {
            VStack {
                Text("My Settingsview")
            }.frame(width: 500, height: 500)
        }.windowStyle(.hiddenTitleBar)
    }
}
