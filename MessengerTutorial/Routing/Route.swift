//
//  Route.swift
//  MessengerTutorial
//
//  Created by lexi sanders on 12/19/23.
//

import Foundation

enum Route: Hashable {
    case profile(User)
    case chatView(User)
}
