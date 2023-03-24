//
//  ChatGPTWebView.swift
//  MenuBarGPT
//
//  Created by Viacheslav Shkliarov on 23.03.2023.
//

import SwiftUI
import WebKit

struct ChatGPTWebView: NSViewRepresentable {
    let view = WebView()
    
    init() {
        reloadPage(every: 3600)
    }
    
    func makeNSView(context: Context) -> WKWebView {
        let chatURL = URL(string: "https://chat.openai.com")!
        view.load(URLRequest(url: chatURL))

        return view
    }
   
    func updateNSView(_ uiView: WKWebView, context: Context) {}
    
    
    /// Reload WebView once in an hour to refresh session.
    func reloadPage(every seconds: TimeInterval) {
        Timer.scheduledTimer(withTimeInterval: seconds, repeats: true) { _ in
            view.reload()
        }
    }
 
}


class WebView: WKWebView {
    override func willOpenMenu(_ menu: NSMenu, with event: NSEvent) {
        menu.addItem(withTitle: "Quit", action: #selector(exitApp), keyEquivalent: "")
    }
    
    @objc func exitApp() {
        exit(0)
    }
}
