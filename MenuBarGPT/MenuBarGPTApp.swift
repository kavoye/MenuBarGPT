//
//  MenuBarGPTApp.swift
//  MenuBarGPT
//
//  Created by Viacheslav Shkliarov on 23.03.2023.
//

import SwiftUI

@main
struct MenuBarGPTApp: App {
    var body: some Scene {
        MenuBarExtra("ChatGPT", systemImage: "circles.hexagonpath.fill") {
            ContentView()
        }
        .menuBarExtraStyle(.window)
    }
}
