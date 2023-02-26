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
    
    let url: String
    var body: some View {
        GeometryReader { g in
            ScrollView {
                WebView(url: URL(string: url)!)
                    .frame(height: g.size.height)
                    .offset(x: -10, y: -10)
            }
            .frame(height: g.size.height)
        }
    }
}

struct WebView: NSViewRepresentable {
    let url: URL

    func makeNSView(context: NSViewRepresentableContext<WebView>) -> WKWebView {
        let webView: WKWebView = WKWebView()
        let request = URLRequest(url: self.url)
        webView.customUserAgent = "Chrome"
        DispatchQueue.main.async {
            webView.load(request)
        }
        return webView
    }

    func updateNSView(_ webView: WKWebView, context: NSViewRepresentableContext<WebView>) {}
}
