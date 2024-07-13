//
//  ActiveNowView.swift
//  MessengerApp2
//
//  Created by Admin on 02/07/2024.
//

import SwiftUI

  
struct ActiveNowView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 32) {
                ForEach(0 ... 10, id: \.self) { user in
                    VStack {
                        ZStack(alignment: .bottomTrailing) {
                            CircularProfileImageView(user: User.MOCK_USER, size: .medium)
                            ZStack {
                                Circle()
                                    .fill(Color.white)
                                    .frame(width:  18, height:  18)
                                
                                Circle()
                                    .fill(Color(.systemGreen))
                                    .frame(width:  12, height:  12)
                            }
                        }
                        
                        Text("Eminen")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                }
            }
            .padding()
        }
        .frame(height: 106, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
}


struct ActiveNowView_Previews: PreviewProvider {
    static var previews: some View {
        ActiveNowView()
    }
}



