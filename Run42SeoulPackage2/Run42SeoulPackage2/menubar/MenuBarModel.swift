//
//  Model.swift
//  Run42SeoulPackage2
//
//  Created by Chan on 2023/02/25.
//  Copyright © 2023 Run42. All rights reserved.
//

import AppKit

public extension NSScreen {
	static let screenSize = NSScreen.main?.visibleFrame.size
	static let screenWidth = screenSize!.width
	static let screenHeight = screenSize!.height
	static let halfOfScreen = (x: screenWidth / 2, y: screenHeight / 2)
}

public class HostingView {
	var size: (width: CGFloat, height: CGFloat) = (NSScreen.halfOfScreen.x, NSScreen.halfOfScreen.y)
	var viewStack = [WindowView()]
}

public class StatusBar {
	var statusItem = NSStatusItem()
	var frames = [NSImage]()
	var cnt: Int = 0
	var isRunning: Bool = false
	var interval: Double = 1.0
	var alertCount: Int = 0
}


