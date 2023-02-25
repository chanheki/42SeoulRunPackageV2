//
//  Run42SeoulPackage2App.swift
//  Run42SeoulPackage2
//
//  Created by Chan on 2023/02/16.
//

import SwiftUI

@main
struct Run42SeoulPackage2App: App {
	@NSApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
	var body: some Scene {
		WindowGroup {
			ContentView()
		}
		.windowStyle(HiddenTitleBarWindowStyle())
	}
}
