//
//  ContentView.swift
//  MenuBarGPT
//
//  Created by Viacheslav Shkliarov on 23.03.2023.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("webViewHeight") var webViewHeight: Double = 650
    @AppStorage("webViewWidth") var webViewWidth: Double = 480
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            ChatWebView()
                .frame(width: webViewWidth, height: webViewHeight)
            
            Menu {
                Button("Settings") {
                    NSApp.sendAction(Selector(("showSettingsWindow:")), to: nil, from: nil)
                    for window in NSApplication.shared.windows {
                        window.level = .floating
                    }
                }
                
                Button("Quit") { exit(0) }
            } label: {
                Text("Menu")
                    .foregroundColor(.white.opacity(0.85))
                    .font(.system(size: 14.5))
            }
            .menuStyle(.borderlessButton)
            .menuIndicator(.hidden)
            .offset(x: -60, y: 15)
            .fixedSize()
        }
    }
}
