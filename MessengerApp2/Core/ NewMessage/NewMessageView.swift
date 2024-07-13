//
//  NewMessageView.swift
//  MessengerApp2
//
//  Created by Admin on 30/06/2024.
//

import SwiftUI
 

struct NowMessageView: View {
    @Binding var isPresented: Bool
    @State private var searchText = ""
    
    
    var body: some View {
        NavigationView {
        ScrollView {
            TextField("To: ", text: $searchText)
                .frame(height: 44)
                .padding(.leading)
                .background(Color(.systemGroupedBackground))
            
            Text("Contacts")
                .foregroundColor(.gray)
                .font(.footnote)
                . frame(maxWidth:  .infinity, alignment:  .leading)
                .padding()
            
            ForEach(0 ... 10, id: \.self) { user in
                VStack {
                    HStack {
                        CircularProfileImageView(user:  User.MOCK_USER, size:  .small)
                        
                        Text("Eminen Rabbit")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                        
                        Spacer()
                        
                    }
                    .padding(.leading)
                    
                    Divider()
                        .padding(.leading, 48)
                }
            }
        }
        .navigationTitle("New Message")
        .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement:  .navigationBarLeading) {
                    Button("Cancel") {
                        isPresented = false
                    }
                }
            }
        }
    }
}

struct NowMessageView_Previews: PreviewProvider {
    @State static var isPresented = true

    static var previews: some View {
        NavigationView {
            NowMessageView(isPresented: $isPresented)
        }
    }
}
