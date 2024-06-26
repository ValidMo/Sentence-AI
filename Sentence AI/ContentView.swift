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
            ScrollView {
                ForEach(chatController.sentences){ sentence in
                    MessageView(message: sentence)
                        .padding(5)
                }
                
            }
            Divider()
            HStack{
                TextField("Enter your sentence here...", text: $text)
                    .frame(width: .infinity)
                    .padding(5)
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(15)
                
                Button(action: {
                    chatController.sendMessageToChatBot(text)
                    text = ""
                }, label: {
                    Image(systemName: "text.magnifyingglass")
                        .imageScale(.large)
                        .foregroundStyle(.tint)
                })
            }
        }
        .padding()
        Divider()

    }
}

#Preview {
    ContentView()
}
