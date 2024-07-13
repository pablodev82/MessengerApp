//
//  ProfileView.swift
//  MessengerApp2
//
//  Created by Admin on 30/06/2024.
//

import SwiftUI
import PhotosUI

struct ProfileView: View {
    @State private var isShowingImagePicker = false
    @State private var selectedImage: UIImage? = nil
    var user: User
    
    var body: some View {
        VStack {
            // head
            VStack {
                if let selectedImage = selectedImage {
                    Image(uiImage: selectedImage)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 80)
                        .clipShape(Circle())
                        .clipped()
                } else {
                    CircularProfileImageView(user: user, size:  .xLarge)
                }
                
                Button(action: {
                    isShowingImagePicker = true
                }, label: {
                    Text(user.fullName)
                        .font(.title2)
                        .fontWeight(.semibold)
                })
                .sheet(isPresented: $isShowingImagePicker, content: {
                    ImagePickerView(selectedImage: $selectedImage)
                })
            }
            
            List {
                Section(header: Text("Settings").foregroundColor(.white)
                                .fontWeight(.semibold)
                                .padding(7)
                                .background(Color.blue)
                                .cornerRadius(10)) {
                    ForEach(SettingsOptionsViewModel.allCases) { option in
                        HStack {
                            Image(systemName: option.imageName)
                                .resizable()
                                .frame(width: 24, height: 24)
                                .foregroundColor(option.imageBackgroundColor)
                            
                            Text(option.title)
                                .font(.subheadline)
                        }
                    }
                    
                    Spacer()
                }
                
                
                
                Section(header: Text("Account Actions").foregroundColor(.white)
                           .fontWeight(.semibold)
                           .padding(7)
                           .background(Color.red)
                           .cornerRadius(10)) {
                    Button("Log Out") {
                        // Log out action
                    }
                    
                    Button("Delete Account") {
                        // Delete account action
                    }
                }
                .foregroundColor(.red)
    
            }
            
            
        }
    }
}

struct ImagePickerView: UIViewControllerRepresentable {
    @Binding var selectedImage: UIImage?
    
    func makeUIViewController(context: Context) -> UIImagePickerController {
        let picker = UIImagePickerController()
        picker.delegate = context.coordinator
        return picker
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    class Coordinator: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
        let parent: ImagePickerView
        
        init(_ parent: ImagePickerView) {
            self.parent = parent
        }
        
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            if let selectedImageFromPicker = info[.originalImage] as? UIImage {
                print(selectedImageFromPicker)
                parent.selectedImage = selectedImageFromPicker
            }
            picker.dismiss(animated: true)
        }
        
        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            picker.dismiss(animated: true)
        }
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {}
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(user: User.MOCK_USER)
    }
}
