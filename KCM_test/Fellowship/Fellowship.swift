//
//  Fellowship.swift
//  KCM_test
//
//  Created by Eric Yang on 8/09/21.
//

import SwiftUI

struct FellowshipSection: Codable, Identifiable {
    var id: UUID
    var name: String
    var items: [FellowshipItem]
}

struct FellowshipItem: Codable, Equatable, Identifiable {
    var id: UUID
    var name: String
    var address: String
    var signup: String
    var rides: String
    var contact: String

    #if DEBUG
    static let example = FellowshipItem(id: UUID(), name: "Bowling", address: "1234 Main St", signup: "link1", rides: "link2",  contact: "increach")
    #endif
}

/*
 [
     {
         "id": "2b732312-0285-4185-b487-81dfba73266f",
         "name": "Post-GM Fellowship",
         "items": [
             {
                 "id": "4f5644cd-cf73-4a5c-b356-8ff4322578c0",
                 "name": "Tacos",
                 "address": "1234 Main St",
                 "signup": "link1"
                 "rides": "link2"
             },
             {
                 "id": "38085d75-16ad-40b2-a3bc-5583d9576cf5",
                 "name": "Bowling",
                 "address": "1234 Main St",
                 "signup": "link1"
                 "rides": "link2"
             }
         ]
     },
     {
         "id": "1284d708-ad27-42c8-b9f0-b69376de9cbf",
         "name": "Contact",
         "items": [
             {
                 "id": "2f8c9d9d-3bf0-4cea-86c7-9f61d762e7df",
                 "name": "Tacos",
                 "address": "1234 Main St",
                 "signup": "link1"
                 "rides": "link2"
             }
         ]
     }
 ]


 */
