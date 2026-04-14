//
//  AppDelegate.swift
//  AccessoryViewPerf
//
//  Created by cyan on 4/14/26.
//

import AppKit

@main
class AppDelegate: NSObject, NSApplicationDelegate {
  func applicationShouldOpenUntitledFile(_ sender: NSApplication) -> Bool {
    if let openPanel = (NSApp.windows.first { $0 is NSOpenPanel }) {
      openPanel.makeKeyAndOrderFront(self)
    } else {
      NSDocumentController.shared.openDocument(self)
    }

    return false
  }
}

class DocumentController: NSDocumentController {
  override func beginOpenPanel(_ openPanel: NSOpenPanel, forTypes inTypes: [String]?) async -> Int {
    // Remove this line to have much better performance
    openPanel.accessoryView = NSView()

    return await super.beginOpenPanel(openPanel, forTypes: inTypes)
  }
}
