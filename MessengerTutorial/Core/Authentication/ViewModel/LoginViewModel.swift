//
//  LoginViewModel.swift
//  MessengerTutorial
//
//  Created by lexi sanders on 12/16/23.
//

import SwiftUI

class LoginViewModel: ObservableObject {
    
    @Published var email = ""
    @Published var password = ""
    
    func login () async throws {
        try await AuthService().login(withEmail: email, password: password)
    }
}
