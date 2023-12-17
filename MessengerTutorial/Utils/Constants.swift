//
//  Constants.swift
//  MessengerTutorial
//
//  Created by lexi sanders on 12/17/23.
//

import Foundation
import Firebase

struct FirestoreConstants {
    
    static let usersCollection = Firestore.firestore().collection("users")
    static let messagesCollection = Firestore.firestore().collection("messages")
}
