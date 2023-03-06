//
//  BrowserView.swift
//  Run42SeoulPackage2
//
//  Created by 유정현 on 2023/02/25.
//  Copyright © 2023 Run42. All rights reserved.
//

import SwiftUI
import WebKit

struct BrowserView: View {
	
	@Binding var url: String
	var webView = WebView(url: URL(string: "https://intra.42.fr")!)
				
	var body: some View {
		GeometryReader { g in
			ScrollView {
				webView
					.frame(height: g.size.height)
					.offset(x: -10, y: -10)
			}
			.frame(height: g.size.height)
			.onChange(of: url) { newValue in
				webView.refresh(url: newValue)
			}
		}
	}
}

struct WebView: NSViewRepresentable {

	var url: URL
	let webView: WKWebView = WKWebView()

	func makeNSView(context: NSViewRepresentableContext<WebView>) -> WKWebView {
		let request = URLRequest(url: self.url)
		DispatchQueue.main.async {
			webView.load(request)
		}
		return webView
	}
	
	func updateNSView(_ nsView: WKWebView, context: Context) { }
	
	func refresh(url: String) {
		webView.load(URLRequest(url: URL(string: url)!))
	}
}
