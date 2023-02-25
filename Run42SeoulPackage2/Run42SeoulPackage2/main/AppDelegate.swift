//
//  AppDelegate.swift
//  Run42SeoulPackage2
//
//  Created by Chan on 2023/02/23.
//  Copyright © 2023 Run42. All rights reserved.
//

import Cocoa
import SwiftUI

class AppDelegate: NSWorkspace, NSApplicationDelegate, URLSessionDelegate {
	var statusBar = MenuBarController()
	
	func applicationWillFinishLaunching(_ notification: Notification) {
		statusBar.buttonInit()
	}
	
	func applicationDidFinishLaunching(_ Notification: Notification) {
		statusBar.startRunning()
	}
}

