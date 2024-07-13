//
//  LoginViewModel.swift
//  MessengerApp2
//
//  Created by Admin on 07/07/2024.
//

import SwiftUI

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    func login() throws {
        try AuthService().login(withEmail: email, password:  password)
        
    }
}
