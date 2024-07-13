//
//  AuthService.swift
//  MessengerApp2
//
//  Created by Admin on 07/07/2024.
//

import Foundation


class AuthService {
    
    static let shared = AuthService()
    
  //  @Published var userSession: FirebaseAuth.User?
//
//    init() {
//        self.userSession = Auth.auth.currentUser
//        loadCurentuserData()
//        print("DEBUG: User ession id is \(user.sesion?.uid)")
//    }

    func login(withEmail email: String, password: String) throws {
        // Imprimir email y password para depuración
        print("DEBUG: Email is \(email)")
        print("DEBUG: Password is \(password)")
         
    }
    
    func createUser(withEmail email: String, password: String, fullName: String) throws {
        // Implementar la lógica de creación de usuario aquí
        let authService = AuthService()

        do {
            try authService.login(withEmail: email, password: password)
            print("DEBUG: Create user \(LoginView())")
        } catch {
            print("Error during login: \(error.localizedDescription)")
        }
    }
    
    
}

