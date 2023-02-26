//
//  MenuBarController.swift
//  Run42SeoulPackage2
//
//  Created by Chan on 2023/02/22.
//  Copyright © 2023 Run42. All rights reserved.
//

import SwiftUI
import AppKit

class MenuBarController: NSWorkspace {
	let cpu = CPU()
	let statusBar = StatusBar()
	let menuBarView = MenuBarView()
	
	func buttonInit() {
		menuBarView.imageInit("42", statusBar)
		menuBarView.buttonAppear(statusBar)
		menuBarView.hostingMenuView(statusBar)
	}
	
	func startRunning() {
		cpu.cpuTimer = Timer.scheduledTimer(withTimeInterval: 5.0, repeats: true, block: { (t) in
			self.cpu.usageCPU()
			self.statusBar.interval = 0.02 * (100 - max(0.0, min(99.0, self.cpu.usage.value))) / 6
			self.statusBar.statusItem.button?.title = self.cpu.isShowUsage ? self.cpu.usage.description : ""
		})
		cpu.cpuTimer?.fire()
		statusBar.isRunning = true
		animate()
	}
	
	func stopRunning() {
		statusBar.isRunning = false
		cpu.cpuTimer?.invalidate()
	}
	
	func animate() {
		statusBar.statusItem.button?.image = statusBar.frames[statusBar.cnt]
		statusBar.cnt = (statusBar.cnt + 1) % statusBar.frames.count
		if !statusBar.isRunning { return }
		DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + statusBar.interval) {
			self.animate()
		}
	}
	
	func alert() {
		let iconSwiftUI = ZStack(alignment:.center) {
			Text(String(statusBar.alertCount))
				.background(
					Circle()
						.fill(Color.blue)
						.frame(width: 15, height: 15)
				)
				.frame(maxWidth: .infinity, maxHeight: .infinity,  alignment: .bottomTrailing)
				.padding(.trailing, 5)
		}
		let iconView = NSHostingView(rootView: iconSwiftUI)
		iconView.frame = NSRect(x: 0, y: 0, width: 40, height: 22)
		
		if statusBar.alertCount != 0 {
			Text(String(statusBar.alertCount))
				.background(
					Circle()
						.fill(Color.blue)
						.frame(width: 15, height: 15)
				)
				.frame(maxWidth: .infinity, maxHeight: .infinity,  alignment: .bottomTrailing)
				.padding(.trailing, 5)
		}
		statusBar.alertCount = (statusBar.alertCount + 1 ) % 100007
	}
}
