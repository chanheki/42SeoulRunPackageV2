//
//  MenuBarView.swift
//  Run42SeoulPackage2
//
//  Created by Chan on 2023/02/25.
//  Copyright © 2023 Run42. All rights reserved.
//

import AppKit
import SwiftUI

class MenuBarView {
	let hostingView = HostingView()
	
	func buttonAppear(_ statusBar: StatusBar) {
		let statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)
		statusBar.statusItem = statusItem
	}
	
	func hostingMenuView(_ statusBar: StatusBar) {
		let contentView = NSHostingView(rootView: hostingView.viewStack.first!)
		contentView.frame = NSRect(x: 0, y: 0, width: hostingView.size.width, height: hostingView.size.height)
		print(contentView.frame)
		
		let menuItem = NSMenuItem()
		menuItem.view = contentView
		
		let menu = NSMenu()
		menu.addItem(menuItem)
		statusBar.statusItem.menu = menu
	}
	
	func imageInit(_ imgName: String, _ statusBar: StatusBar) {
		switch imgName {
		case "cat": for i in (0 ..< 5) {statusBar.frames.append(NSImage(imageLiteralResourceName: "cat_page\(i)"))}
		case "gon": for i in (1...5) {statusBar.frames.append(NSImage(imageLiteralResourceName: "gon_\(i)"))}
		case "gun":	for i in (1...5) {statusBar.frames.append(NSImage(imageLiteralResourceName: "gun_\(i)"))}
		case "lee":	for i in (1...5) {statusBar.frames.append(NSImage(imageLiteralResourceName: "lee_\(i)"))}
		case "gam":	for i in (1...5) {statusBar.frames.append(NSImage(imageLiteralResourceName: "gam_\(i)"))}
		default : for i in (1...11) {statusBar.frames.append(NSImage(imageLiteralResourceName: "42flip_0\(i)"))}
		}
	}
}
