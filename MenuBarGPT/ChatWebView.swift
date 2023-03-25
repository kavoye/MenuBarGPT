//
//  ChatWebView.swift
//  MenuBarGPT
//
//  Created by Viacheslav Shkliarov on 23.03.2023.
//

import SwiftUI
import WebKit

struct ChatWebView: NSViewRepresentable {
    let view = WebView()

    func makeNSView(context: Context) -> WKWebView {
        let chatURL = URL(string: "https://chat.openai.com")!
        view.load(URLRequest(url: chatURL))
        
        /// Reload WebView once in an hour to refresh session.
        let timer = Timer.scheduledTimer(withTimeInterval: 3600, repeats: true) { _ in
            view.reload()
        }

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
