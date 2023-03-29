//
//  ChatWebView.swift
//  MenuBarGPT
//
//  Created by Viacheslav Shkliarov on 23.03.2023.
//

import SwiftUI
import WebKit

struct ChatWebView: NSViewRepresentable {
    let view = WKWebView()
    
    func makeNSView(context: Context) -> WKWebView {
        let chatURL = URL(string: "https://chat.openai.com")!
        view.load(URLRequest(url: chatURL))
        
        /// Reload WebView once in an hour to refresh session.
        Timer.scheduledTimer(withTimeInterval: 3600, repeats: true) { _ in
            view.reload()
        }
        
        return view
    }
    
    func updateNSView(_ uiView: WKWebView, context: Context) {}
    
}
