//
//  InboxViewModel.swift
//  MessengerTutorial
//
//  Created by lexi sanders on 12/16/23.
//

import Foundation
import Combine
import Firebase

class InboxViewModel: ObservableObject {
    
    @Published var currentUser: User?
    
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        setupSubscribers()
    }
    
    private func setupSubscribers() {
        UserService.shared.$currentUser.sink { [weak self] user in
            self?.currentUser = user
        }.store(in: &cancellables)
    }
    
}
