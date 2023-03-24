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
        DispatchQueue.main.async {
            let url = URL(string: "https://chat.openai.com")!
            view.load(URLRequest(url: url))
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
