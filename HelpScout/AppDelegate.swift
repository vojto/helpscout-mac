//
//  AppDelegate.swift
//  HelpScout
//
//  Created by Vojtech Rinik on 05/11/2016.
//  Copyright © 2016 Vojtech Rinik. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var preferencesWindow: NSWindow!
    
    var statusItem: NSStatusItem!
    var statusMenu: NSMenu!


    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        
        let statusBar = NSStatusBar.system()
        
        statusItem = statusBar.statusItem(withLength: 40)
        statusItem.image = NSImage(named: "StatusItem")
        statusItem.highlightMode = true
        statusItem.title = "1"
        
        statusMenu = NSMenu()
        statusItem.menu = self.statusMenu
        
        let item = NSMenuItem(title: "Updated.", action: nil, keyEquivalent: "")
        statusMenu.addItem(item)
        
        statusMenu.addItem(NSMenuItem.separator())
        
        let prefItem = NSMenuItem(title: "Preferences", action: #selector(showPreferences), keyEquivalent: "")
        statusMenu.addItem(prefItem)
        
        
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
    
    func showPreferences() {
        preferencesWindow.makeKeyAndOrderFront(self)
    }


}

