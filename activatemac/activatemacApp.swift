//
//  activatemacApp.swift
//  activatemac
//
//  Created by Nick Lopez on 3/30/26.
//

import SwiftUI

@main
struct activatemacApp: App {
    @NSApplicationDelegateAdaptor(ActivateMacAppDelegate.self) var appDelegate
    var body: some Scene {
        Settings {
            EmptyView()
        }
    }
}

class ActivateMacAppDelegate: NSObject, NSApplicationDelegate {
    var window: NSWindow!
    
    func applicationDidFinishLaunching(_ notification: Notification) {
        window = NSWindow(
            contentRect: NSRect(x: 0, y: 0, width: 374, height: 174),
            styleMask: [.borderless],
            backing: .buffered,
            defer: false
        )
        let contentView = ContentView()
        window.contentView = NSHostingView(rootView: contentView)
        window.isOpaque = false
        window.backgroundColor = .clear
        window.level = .statusBar
        window.makeKeyAndOrderFront(nil)
        window.orderFrontRegardless()
        window.sharingType = .none
        window.collectionBehavior = [.canJoinAllSpaces]
        window.setFrameOrigin(NSPoint(x: (NSScreen.main?.frame.size.width)! - 374,
                                      y: 24))
    
    }
}
