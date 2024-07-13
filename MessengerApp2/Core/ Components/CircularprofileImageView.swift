//
//  CircularprofileImageView.swift
//  MessengerApp2
//
//  Created by Admin on 02/07/2024.
//

import SwiftUI
 
enum  profileImageSize {
        case xxSmall
        case xSmall
        case small
        case medium
        case large
        case xLarge
    
var dimension: CGFloat {
        switch  self {
        case .xxSmall: return 28
        case .xSmall: return 32
        case .small: return 40
        case .medium: return 56
        case .large: return 64
        case .xLarge: return 80
        }
    }
}

struct CircularProfileImageView: View {
    
    let user: User
    let size: profileImageSize
    
    var body: some View {
        if let imageUrl = user.profileImageUrl {
            Image(imageUrl)
                .resizable()
                .scaledToFill()
                .clipShape(Circle())
                .frame(width:  size.dimension, height:  size.dimension)
                
        } else {
            Image(systemName:  "person.circle.fill")
                .resizable()
                .frame(width:  size.dimension, height:  size.dimension)
                .foregroundColor(Color(.systemGray4))
        }
    }
}

struct CircularProfileImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircularProfileImageView(user: User.MOCK_USER, size: .large)
    }
}


