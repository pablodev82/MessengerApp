//
//  RegistrationViewModel.swift
//  MessengerApp2
//
//  Created by Admin on 07/07/2024.
//

import SwiftUI

class  RegistrationViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var fullName = ""
    
    func createUser() throws {
        try AuthService().createUser(withEmail: email, password: password, fullName: fullName)
    }
    
}
