//
//  ContentView.swift
//  MessengerApp2
//
//  Created by Admin on 30/06/2024.
//

import SwiftUI

struct ContentView: View {
    
    
    @State private var email = ""
    @State private var password = ""
        
    var body: some View {
        
                NavigationView {
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
                            TextField("Enter your email", text: $email )
                                .font(.subheadline)
                                .padding(12)
                                .background(Color(.systemGray6))
                                .cornerRadius(10)
                                .padding(.horizontal, 24)
                            
                            SecureField("Enter password", text:  $password)
                                .font(.subheadline)
                                .padding(12)
                                .background(Color(.systemGray6))
                                .cornerRadius(10)
                                .padding(.horizontal, 24)
                        }
                        
                        Button {
                            print("forget password")
                        } label: {
                            Text("Forget password?")
                                .font(.footnote)
                                .fontWeight(.semibold)
                                .padding(.top)
                                .padding(.trailing, 28)
                        }
                        .frame(maxWidth:  .infinity, alignment:  .trailing)
                        
                        // Login Button
                        Button {
                            print("handle login")
                        } label: {
                            Text("Login")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .foregroundColor(Color.white)
                                .frame(width:  360, height:  44)
                                .background(Color(.systemBlue))
                                .cornerRadius(10)
                            
                        }
                        .padding(.vertical)
                        
                        // Facebook Login
                        HStack {
                            Rectangle()
                                .frame(width:  (UIScreen.main.bounds.width / 2) - 40, height:  0.5)
                            
                            Text("OK")
                                .font(.footnote)
                                .fontWeight(.semibold)
                            
                            Rectangle()
                                .frame(width:  (UIScreen.main.bounds.width / 2) - 40, height:  0.5)
                        }
                        .foregroundColor(.gray)
                        
                        HStack {
                            Image("iconfacebook")
                                .resizable()
                                .frame(width:  20, height:  20)
                            
                            Text("Continue with facebook")
                                .font(.footnote)
                                .fontWeight(.semibold)
                                .foregroundColor(Color(.systemBlue))
                        }
                        .padding(.top, 8)
                        
                        Spacer()
                        
                        Divider()
                        
                        NavigationLink(
                            destination:  RegistrationView()
                                .navigationBarBackButtonHidden(true),

                            label: {
                                HStack(spacing: 3) {
                                    Text("Don't have an account")
                                    Text("Sign Up")
                                        .fontWeight(.semibold)
                                }
                                .font(.footnote)
                            })
                            .padding(.vertical)
                        
                    }
                }
            }
        }



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
