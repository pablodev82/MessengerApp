//
//  ProfileViewModel.swift
//  MessengerApp2
//
//  Created by Admin on 30/06/2024.
//

import SwiftUI
import PhotosUI

class ProfileViewModel:  ObservableObject {
    @Published var selectedItem: UIImage? {
        didSet { loadImage() }
    }
    
    @Published var profileImage: Image?  // aqui un codigo adaptado para swift 4.5 que es un poco mas antiguo
    
    func loadImage() {
        guard let  uiImage =  selectedItem  else { return }
        DispatchQueue.main.sync {
            self.profileImage = Image(uiImage: uiImage)
        }
    }
//
//    func loadImage() throws {
//        guard let item = selectedItem else { return }
//        guard let imageData = try item.loadImage(type: Data.self) else { return }
//        guard let uiImage = UIImage(data: imageData) else { return  }
//        self.profileImage = Image(uiImage: uiImage)
//    }
//
}
