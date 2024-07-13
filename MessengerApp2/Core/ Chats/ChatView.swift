//
//  ChatView.swift
//  MessengerApp2
//
//  Created by Admin on 02/07/2024.
//

import SwiftUI
 
struct ChatView: View {
    
    @State private var messageText = ""
    
        
    var body: some View {
        VStack {
            ScrollView {
                // encbezado
                VStack {
                    CircularProfileImageView(user: User.MOCK_USER, size:  .xLarge)
                    
                    VStack(spacing: 4) {
                        Text("Eminen Rapper")
                            .font(.title3)
                            .fontWeight(.semibold)
                        
                        Text("Messenger")
                            .font(.footnote)
                            .foregroundColor(.gray)
                            
                             
                    }
                }
                // message
                ForEach(0...15, id: \.self) { message in
                    ChatMessageCell(isFromCurrentUser: Bool.random())
                        
                        
                }
                // vista de entrada de mensajes
                
            }
            
            Spacer()
            
            ZStack(alignment: .trailing) {
                TextEditor(text: $messageText)
                    .padding(12)
                    .padding(.trailing, 48)  //
                    .background(Color(.systemGroupedBackground))
                    .clipShape(Capsule())
                    .font(.subheadline)
                    .frame(height: 80)
                
                Button {
                    print("Send message")
                } label: {
                    Text("Send")
                        .fontWeight(.semibold)
                }
                .padding(.horizontal)
            }
            .padding()
        }
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}

