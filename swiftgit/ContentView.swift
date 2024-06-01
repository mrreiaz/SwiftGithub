//
//  ContentView.swift
//  swiftgit
//
//  Created by Abdul Halim Reiaz on 2024/06/01.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            GradintBg(firstColor: Color.blue, secendColor: Color.black)
        }
    }
}

#Preview {
    ContentView()
}

struct GradintBg: View {
    let firstColor: Color
    let secendColor: Color
    var body: some View {
        LinearGradient(
            colors: [firstColor,secendColor],
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        .ignoresSafeArea()
    }
}
