//
//  NewEvents.swift
//  KCM_test
//
//  Created by Eric Yang on 9/2/21.
//

import SwiftUI

struct NewEventsSection: Codable, Identifiable {
    var id: UUID
    var name: String
    var items: [NewEventsItem]
}

struct NewEventsItem: Codable, Equatable, Identifiable {
    var id: UUID
    var name: String
    var description: String
    var start_hour: Int
    var start_min: Int
    var day: Int


    #if DEBUG
    static let example = NewEventsItem(id: UUID(), name: "MNP", description: "Monday Night Prayer every Monday at 8PM! We meet at CPA 216!", start_hour: 20, start_min: 0, day: 2)
    #endif
}
