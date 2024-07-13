//
//  InboxView.swift
//  MessengerApp2
//
//  Created by Admin on 30/06/2024.
//

import SwiftUI

struct InboxView: View {
    
   @State private var showNewMessageView = false
   @State private var user = User.MOCK_USER
   @State private var selectedUser: User?
    
    
    var body: some View {
        NavigationView {
            ScrollView {
                ActiveNowView()
                
                List {
                    ForEach(0 ... 10, id: \.self) { message in
                        ZStack {
                            NavigationLink(
                                destination: Text("message"),
                                label: {
                                    EmptyView()
                                }).opacity(0.0)
                             ChatView()
                        }
                 }
            }
                .listStyle(PlainListStyle())
                .frame(height: UIScreen.main.bounds.height - 120)
            }
//            .navigationDestination(for: User.self, destination: { user in
//                ProfileView(user: user)
//            })
            .fullScreenCover(isPresented:  $showNewMessageView, content: {
                NowMessageView(isPresented: $showNewMessageView)
            })
                 
            
            .toolbar {
                ToolbarItem(placement:  .navigationBarLeading ) {
                    HStack {
                        NavigationLink(destination: ProfileView(user: user)) {
                            CircularProfileImageView(user:  user, size:  .xSmall)
                        
                        }
                            
                        Text("Chats")
                            .font(.title)
                            .fontWeight(.semibold)
                          
                    }
                }
                
                ToolbarItem(placement:  .navigationBarTrailing) {
                    Button {
                        showNewMessageView.toggle()
                    } label: {
                        Image(systemName:  "pencil.circle.fill")
                            .resizable()
                            .frame(width:  32, height:  32)
                    }
                    
                }
            }
        }
    }
}

struct InboxView_Previews: PreviewProvider {
    static var previews: some View {
        InboxView()
    }
}
