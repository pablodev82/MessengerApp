//
//   InboxRowView.swift
//  MessengerApp2
//
//  Created by Admin on 30/06/2024.
//

import SwiftUI

struct InboxRowView: View {
    var body: some View {
        HStack(alignment:  .top, spacing:  12) {
            CircularProfileImageView(user: User.MOCK_USER, size:  .medium)
            
            VStack(alignment: .leading, spacing: 4) {
                Text("Eminen")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                
                Text("Some test message now")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .frame(maxWidth:  UIScreen.main.bounds.width - 100, alignment: .leading)
            }
            
            HStack {
                Text("Yesterday")
                
                Image(systemName: "chevron.right")
            }
            .font(.footnote)
            .foregroundColor(.gray)
        }
        
        .frame(height:  72)
    }
}

struct InboxRowView_Previews: PreviewProvider {
    static var previews: some View {
        InboxRowView()
    }
}
