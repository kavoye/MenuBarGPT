//
//  MenuBarApp.swift
//  MenuBarGPT
//
//  Created by Viacheslav Shkliarov on 23.03.2023.
//

import SwiftUI

@main
struct MenuBarApp: App {
    var body: some Scene {
        Settings {
            SettingsView()
        }
        
        MenuBarExtra("ChatGPT", systemImage: "circles.hexagonpath.fill") {
            ContentView()
        }
        .menuBarExtraStyle(.window)
    }
}
