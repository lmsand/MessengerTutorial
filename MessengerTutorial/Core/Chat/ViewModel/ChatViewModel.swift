//
//  ChatViewModel.swift
//  MessengerTutorial
//
//  Created by lexi sanders on 12/17/23.
//

import Foundation

class ChatViewModel: ObservableObject {   // classes require initializers
    
    @Published var messageText = ""
    @Published var messages = [Message]()
    
    let service: ChatService
    
    init(user: User) {
        self.service = ChatService(chatPartner: user)
        observeMessages()
    }
    
    func observeMessages() {
        service.observeMessages() { messages in
            self.messages.append(contentsOf: messages)
        }
    }
    
    func sendMessage() {
        service.sendMessage(messageText)
    }
    
}
