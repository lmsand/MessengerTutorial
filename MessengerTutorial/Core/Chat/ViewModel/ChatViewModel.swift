//
//  ChatViewModel.swift
//  MessengerTutorial
//
//  Created by lexi sanders on 12/17/23.
//

import Foundation

class ChatViewModel: ObservableObject {   // classes require initializers
    
    @Published var messageText = ""
    let user: User
    
    init(user: User) {
        self.user = user
    }
    
    func sendMessage() {
        MessageService.sendMessage(messageText, toUser: user)
    }
    
}
