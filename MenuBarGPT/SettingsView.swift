//
//  SettingsView.swift
//  MenuBarGPT
//
//  Created by Viacheslav Shkliarov on 29.03.2023.
//

import SwiftUI

struct SettingsView: View {
    @AppStorage("webViewHeight") var webViewHeight: Double = 650
    @AppStorage("webViewWidth") var webViewWidth: Double = 480
    
    var body: some View {
        List {
            slider(title: "Window Height", defVal: $webViewHeight, minVal: 600, maxVal: 900)
            Divider()
            slider(title: "Window Width", defVal: $webViewWidth, minVal: 400, maxVal: 700)
        }
        .frame(width: 300, height: 160)
        .listStyle(.sidebar)
    }
    
    @ViewBuilder
    func slider(
        title: String,
        defVal: Binding<Double>,
        minVal: Double,
        maxVal: Double
    ) -> some View {
        Section(title, content: {
            HStack {
                Slider(value: defVal, in: minVal...maxVal)
                Text("\(defVal.wrappedValue, specifier: "%.0f")")
            }
        })
    }
}

