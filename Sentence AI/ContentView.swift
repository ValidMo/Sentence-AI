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
        
        @StateObject var chatController = ChatController()
        @State var text: String = ""
        
        VStack {
           
            TextField("Enter your sentence here...", text: $text)
                .frame(width: .infinity)
                .padding(5)
                .background(Color.gray.opacity(0.1))
                .cornerRadius(15)
            
            Button(action: {
                //run the business logic here:)
            }, label: {
                Image(systemName: "text.magnifyingglass")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
            })
        }
        .padding()
        Divider()
        
        Text("<Chatbot's answer placerholder>")
            .padding()
            .background(Color.black)
            .foregroundColor(Color.white)
            .clipShape(Capsule())
        
    }
}

#Preview {
    ContentView()
}
