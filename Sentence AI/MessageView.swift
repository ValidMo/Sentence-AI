//
//  MessageView.swift
//  Sentence AI
//
//  Created by Valid Mohammadi on 29.03.2024.
//

import SwiftUI

struct MessageView: View {
    
    var message: Message
    
    var body: some View {
        Group{
            if message.isUser {
                HStack {
                    Spacer()
                    Text(message.content)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(Color.white)
                        .clipShape(Capsule())
                }
            }
            else {
                HStack {
                    Text(message.content)
                        .padding()
                        .background(Color.black)
                        .foregroundColor(Color.white)
                        .clipShape(Capsule())
                    Spacer()
                }
            }
        }
        
        
    }
}

#Preview {
    MessageView(message: .init(content: "Hello", isUser: true))
}
