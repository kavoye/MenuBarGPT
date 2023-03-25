//
//  ContentView.swift
//  MenuBarGPT
//
//  Created by Viacheslav Shkliarov on 23.03.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(alignment: .topTrailing) {
            ChatWebView()
                .frame(width: 600, height: 800)
            
            Menu("Menu") {
                Button("Settings") { }
                Button("Quit") { exit(0) }
            }
            .fixedSize()
            .offset(x: -60, y: 13)
        }
    }
}
