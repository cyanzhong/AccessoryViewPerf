# AccessoryViewPerf

This is a sample project to demonstrate how any [NSOpenPanel.accessoryView](https://developer.apple.com/documentation/appkit/nssavepanel/accessoryview) can slow down the file opening process.

Demo video: https://mastodon.social/@MarkEditApp/116391574195669755.

## Test Steps

- Make sure you are using macOS Tahoe
- Build and run [AccessoryViewPerf.xcodeproj](/AccessoryViewPerf.xcodeproj)
- Open a text file and observe the delay
- In [AccessoryViewPerf/AppDelegate.swift](/AccessoryViewPerf/AppDelegate.swift), remove `openPanel.accessoryView = NSView()`
- Build and test the same workflow again
