//
//
//  Homepage.swift
//  KCM_test
//
//  Created by Eric Yang on 8/04/21.
//

import SwiftUI

struct HomeSection: Codable, Identifiable {
    var id: UUID
    var name: String
    var items: [HomeItem]
}

struct HomeItem: Codable, Equatable, Identifiable {
    var id: UUID
    var name: String
    var description: String

    var mainImage: String {
        name.replacingOccurrences(of: " ", with: "-").lowercased()
    }

    var thumbnailImage: String {
        "\(mainImage)-thumb"
    }

    #if DEBUG
    static let example = HomeItem(id: UUID(), name: "MNP", description: "Monday Night Prayer every Monday at 8PM!")
    #endif
}
