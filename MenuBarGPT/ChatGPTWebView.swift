//
//  ChatGPTWebView.swift
//  MenuBarGPT
//
//  Created by Viacheslav Shkliarov on 23.03.2023.
//

import SwiftUI
import WebKit

struct ChatGPTWebView: NSViewRepresentable {
    func makeNSView(context: Context) -> WKWebView {
        let view = WebView()
        guard let openChatURL = URL(string: "https://chat.openai.com") else {
            fatalError("URL not accessible")
        }
        view.load(URLRequest(url: openChatURL))
        return view
    }
   
    func updateNSView(_ uiView: WKWebView, context: Context) {}
 
}


class WebView: WKWebView {
    override func willOpenMenu(_ menu: NSMenu, with event: NSEvent) {
        menu.addItem(withTitle: "Quit", action: #selector(exitApp), keyEquivalent: "")
    }
    
    @objc func exitApp() {
        exit(0)
    }
}
