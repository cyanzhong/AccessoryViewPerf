//
//  Document.swift
//  AccessoryViewPerf
//
//  Created by cyan on 4/14/26.
//

import AppKit

class Document: NSDocument {
  override func makeWindowControllers() {
    // Returns the Storyboard that contains your Document window.
    let storyboard = NSStoryboard(name: NSStoryboard.Name("Main"), bundle: nil)
    let controller = storyboard.instantiateController(withIdentifier: NSStoryboard.SceneIdentifier("Document Window Controller")) as! NSWindowController
    self.addWindowController(controller)
  }

  override nonisolated func read(from data: Data, ofType typeName: String) throws {}
}
