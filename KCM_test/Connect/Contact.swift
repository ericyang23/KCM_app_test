//
//  ChurchDirectory.swift
//  KCM_test
//
//  Created by Eric Yang on 8/05/21.
//

import SwiftUI

struct ContactSection: Codable, Identifiable {
    var id: UUID
    var name: String
    var items: [ContactItem]
}

struct ContactItem: Codable, Equatable, Identifiable {
    var id: UUID
    var name: String
    var email: String
    var contact: String
    var phone: String


    #if DEBUG
    static let example = ContactItem(id: UUID(), name: "Tapestry LA", email: "abc@gmail.com", contact: "Eric Yang", phone: "123-456-7890")
    #endif
}
