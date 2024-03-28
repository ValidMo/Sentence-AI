//
//  ContentView.swift
//  Sentence AI
//
//  Created by Valid Mohammadi on 28.03.2024.
//

import SwiftUI
import OpenAI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "text.magnifyingglass")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
