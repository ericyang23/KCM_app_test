//
//  Events.swift
//  KCM_test
//
//  Created by Eric Yang on 8/17/21.
//

import SwiftUI

struct EventsSection: Codable, Identifiable {
    var id: UUID
    var name: String
    var items: [EventsItem]
}

struct EventsItem: Codable, Equatable, Identifiable {
    var id: UUID
    var name: String
    var description: String
    var start_hour: Int
    var start_min: Int
    var day: Int


    #if DEBUG
    static let example = EventsItem(id: UUID(), name: "MNP", description: "Monday Night Prayer every Monday at 8PM!", start_hour: 20, start_min: 0, day: 2)
    #endif
}
