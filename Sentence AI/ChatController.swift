//
//  ChatController.swift
//  Sentence AI
//
//  Created by Valid Mohammadi on 28.03.2024.
//

import Foundation
import OpenAI

class ChatController: ObservableObject {
    @Published var messages: [Message] = []
    @Published var sentences: [Message] = []
    
    let openAI = OpenAI(apiToken: "<api token placeholder>")
    
    func sendMessageToChatBot(_ content: String){
        let formattedSentence = """
        Please check the sentence mentioned in quotation marks and correct it if needed:\n\"\(content)\"
        please start with "The corrected sentence is:" then tell about the breakdown of the correction:
        """
        let message = Message(content: formattedSentence, isUser: true)
        self.messages.append(message)
        self.sentences.append(Message(content: content, isUser: true))
        getMessageFromBot()
    }
    
    func getMessageFromBot() {
        
        
        openAI.chats(query: .init(model: .gpt3_5Turbo,
                                  messages: self.messages.map({Chat(role: .user, content: $0.content)}))) { result in
            switch result {
            case .success(let success):
                guard let choice = success.choices.first else {
                    return
                }
                let message = choice.message.content
                DispatchQueue.main.async {
                    self.sentences.append(Message(content: message ?? "", isUser: false))
                }
            case .failure(let failure):
                print(failure)
            }
        }
        
        
        
    }
}



