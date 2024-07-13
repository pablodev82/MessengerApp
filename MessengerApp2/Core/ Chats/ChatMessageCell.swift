//
//  ChatMessageCell.swift
//  MessengerApp2
//
//  Created by Admin on 02/07/2024.
//

import SwiftUI

struct ChatMessageCell: View {
    
    let isFromCurrentUser: Bool
    
    var body: some View {
        HStack {
            if isFromCurrentUser {
                Spacer()
                
                Text("This is message for name hsbsbsbsbssskateboatbdnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnskate")
                    .font(.subheadline)
                    .padding()
                    .background(Color(.systemBlue))
                    .foregroundColor(.white)
                    .clipShape(ChatBubble(isFromCurrentUser:  isFromCurrentUser))
                    .frame(maxWidth: UIScreen.main.bounds.width / 1.5, alignment:  .trailing)
            } else {
                HStack(alignment: .bottom, spacing:  8) {
                    CircularProfileImageView(user: User.MOCK_USER, size:  .xxSmall)
                    
                    Text("This is message for name hhhhkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkskate")
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray5))
                        .foregroundColor(.black)
                        .clipShape(ChatBubble(isFromCurrentUser:  isFromCurrentUser))
                        .frame(maxWidth: UIScreen.main.bounds.width / 1.75, alignment:  .leading)
                    
                    Spacer()
                }
            }
        }
        .padding(.horizontal, 8)
    }
}

struct ChatMessageCell_Previews: PreviewProvider {
    static var previews: some View {
        ChatMessageCell(isFromCurrentUser: true)
        // primero se pone true para ver el rasultado en pantalla y luego se cambia a false
    }
}

