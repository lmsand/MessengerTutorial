//
//  ActiveNowViewModel.swift
//  MessengerTutorial
//
//  Created by lexi sanders on 12/19/23.
//

import Foundation
import Firebase

class ActiveNowViewModel: ObservableObject {
    @Published var users = [User]()
    
    init() {
        Task { try await fetchUsers() }
    }
    
    @MainActor
    private func fetchUsers() async throws {
        guard let currentUid = Auth.auth().currentUser?.uid else { return }
        let users = try await UserService.fetchAllUsers(limit: 10)
        self.users = users.filter({ $0.id != currentUid })
    }
}
