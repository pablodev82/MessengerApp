//
//  RegistrationView.swift
//  MessengerApp2
//
//  Created by Admin on 30/06/2024.
//

import SwiftUI
 
struct RegistrationView: View {
    
    // aca le damos los parametros que implementamos en RegistrationViewModel
    @StateObject var viewModel = RegistrationViewModel()
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            Spacer()
            // image logo
            Image("iconmessenger")
                .resizable()
                .scaledToFit()
                .frame(width:  150, height:  150)
                .padding()
            
            // text fields
            VStack {
                TextField("Enter your email", text: $viewModel.email ) //aca le añadios el viewModel.email al text
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 24)
                TextField("Enter your fullname", text: $viewModel.fullName )
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 24)
                
                
                SecureField("Enter password", text:  $viewModel.password)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 24)
            }
            
            Button {
                DispatchQueue.global(qos: .userInitiated).async {
                    do {
                        try viewModel.createUser()
                        DispatchQueue.main.async {
                            // Maneja la UI después de un login exitoso, si es necesario
                        }
                    } catch {
                        DispatchQueue.main.async {
                            // Maneja errores aquí
                        }
                    }
                }
            } label: {
                Text("Sign Up")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                    .frame(width:  360, height:  44)
                    .background(Color(.systemBlue))
                    .cornerRadius(10)
                
            }
            .padding(.vertical)
            
            Spacer()
            
            Divider()
            
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                    HStack(spacing: 3) {
                        Text("Already have an account")
                        Text("Sign Up")
                            .fontWeight(.semibold)
                    }
                    .font(.footnote)
                }
                .padding(.vertical)
        }
        
    }
}


struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
