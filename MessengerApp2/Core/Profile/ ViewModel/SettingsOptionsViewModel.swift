//
//  SettingsOptionsViewModel.swift
//  MessengerApp2
//
//  Created by Admin on 30/06/2024.
//

import SwiftUI

// esta es un Enum  para poder actualizar todo mi conjunto de datos desde aqui

enum  SettingsOptionsViewModel: Int, CaseIterable, Identifiable {
    case darkMode
    case activeStatus
    case accessibility
    case privacy
    case notifications
    
    var title: String {
        switch self {
        case .darkMode: return "Dark mode"
        case .activeStatus: return "Active Status"
        case .accessibility: return "Accessibility"
        case .privacy: return "Privacy and Safety"
        case .notifications: return "Notificacions"
           // si quiero añadir solo pongo las opciones debajo de cada caso
        }
    }
    
    var imageName: String {
        switch self {
        case .darkMode: return "moon.circle.fill"
        case .activeStatus: return "message.circle.fill"
        case .accessibility: return "person.circle.fill"
        case .privacy: return "lock.circle.fill"
        case .notifications: return "bell.circle.fill"
             
        }
    }
    
    var imageBackgroundColor: Color {
        switch self {
        case .darkMode: return .black
        case .activeStatus: return Color(.systemGreen)
        case .accessibility: return .black
        case .privacy: return Color(.systemBlue)
        case .notifications: return Color(.systemPurple)
             
        }
    }
    
    
    var id: Int { return self.rawValue}
}
