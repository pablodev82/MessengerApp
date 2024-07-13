//
//  User.swift
//  MessengerApp2
//
//  Created by Admin on 02/07/2024.
//

import Foundation

struct User: Codable, Identifiable, Hashable {
    var id = NSUUID().uuidString
    let fullName: String
    let email: String
    let profileImageUrl: String?
    
}

extension User {
    static let MOCK_USER = User(fullName: "Eminen", email: "EmineTheRap@gmail.com", profileImageUrl:  "Eminen")
}
