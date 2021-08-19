//
//  ChurchDirectory.swift
//  KCM_test
//
//  Created by Eric Yang on 8/05/21.
//

import SwiftUI

struct ChurchSection: Codable, Identifiable {
    var id: UUID
    var name: String
    var items: [ChurchItem]
}

struct ChurchItem: Codable, Equatable, Identifiable {
    var id: UUID
    var name: String
    var address: String
    var contact: String
    var phone: String
    var sunday: String
    var friday: String


    #if DEBUG
    static let example = ChurchItem(id: UUID(), name: "Tapestry LA", address: "1501 Hill St, Los Angeles, CA 90015", contact: "Eric Yang", phone: "123-456-7890", sunday: "11AM", friday: "7PM")
    #endif
}

/*
 [
     {
         "id": "4c957843-1973-4016-b2fd-e2f100203c54",
         "name": "Churches",
         "items": [
             {
                 "id": "d92c1ca4-5734-4055-b598-03066102c207",
                 "name": "All Nations Community Church",
                 "address": "10000 Foothill Blvd, Lake View Terrace, CA 91342",
                 "contact": "Christopher Lee",
                 "contact number": "661-670-6992",
                 "sunday service": "9:30 AM / 11:30 AM"
             },
             {
                 "id": "331fc6cc-895f-4abd-9eef-d067c4721735",
                 "name": "Ark Maker's Community Church",
                 "address": "10000 Foothill Blvd, Lake View Terrace, CA 91342",
                 "contact": "Christopher Lee",
                 "contact number": "661-670-6992",
                 "sunday service": "9:30 AM / 11:30 AM"
             },
             {
                 "id": "de56fde4-8b1f-409a-8376-3f898e831ffd",
                 "name": "Cerritos Mission Church",
                 "address": "10000 Foothill Blvd, Lake View Terrace, CA 91342",
                 "contact": "Christopher Lee",
                 "contact number": "661-670-6992",
                 "sunday service": "9:30 AM / 11:30 AM"
             },
             {
                 "id": "907a4be2-a7e2-4747-8dcf-e71276e004f0",
                 "name": "Church Everyday",
                 "address": "10000 Foothill Blvd, Lake View Terrace, CA 91342",
                 "contact": "Christopher Lee",
                 "contact number": "661-670-6992",
                 "sunday service": "9:30 AM / 11:30 AM"
             },
             {
                 "id": "8a4912d1-7f5f-45ad-b2bb-c3dc95c423dc",
                 "name": "Citizens LA",
                 "address": "10000 Foothill Blvd, Lake View Terrace, CA 91342",
                 "contact": "Christopher Lee",
                 "contact number": "661-670-6992",
                 "sunday service": "9:30 AM / 11:30 AM"
             },
             {
                 "id": "e449711a-4774-42c3-80d4-de7ab3fde29e",
                 "name": "Fullerton Presbyterian Church",
                 "address": "10000 Foothill Blvd, Lake View Terrace, CA 91342",
                 "contact": "Christopher Lee",
                 "contact number": "661-670-6992",
                 "sunday service": "9:30 AM / 11:30 AM"
             },
             {
                 "id": "96654cf8-742a-43b4-bb06-61a46868ef77",
                 "name": "Glory Church LA",
                 "address": "10000 Foothill Blvd, Lake View Terrace, CA 91342",
                 "contact": "Christopher Lee",
                 "contact number": "661-670-6992",
                 "sunday service": "9:30 AM / 11:30 AM"
             },
             {
                 "id": "80d36a5f-ef14-473b-9f79-7da413363bed",
                 "name": "Good Stewards Church",
                 "address": "10000 Foothill Blvd, Lake View Terrace, CA 91342",
                 "contact": "Christopher Lee",
                 "contact number": "661-670-6992",
                 "sunday service": "9:30 AM / 11:30 AM"
             },
             {
                 "id": "f4290b93-8a0a-486d-a26d-c43892b37371",
                 "name": "Hana Church",
                 "address": "10000 Foothill Blvd, Lake View Terrace, CA 91342",
                 "contact": "Christopher Lee",
                 "contact number": "661-670-6992",
                 "sunday service": "9:30 AM / 11:30 AM"
             },
             {
                 "id": "64b6341b-fd44-4e54-b50e-f08e23180fd8",
                 "name": "LA Open Door Community Church",
                 "address": "10000 Foothill Blvd, Lake View Terrace, CA 91342",
                 "contact": "Christopher Lee",
                 "contact number": "661-670-6992",
                 "sunday service": "9:30 AM / 11:30 AM"
             },
             {
                 "id": "0fe15f57-5217-41ba-a030-34952aecf653",
                 "name": "LA Sarang Community Church",
                 "address": "10000 Foothill Blvd, Lake View Terrace, CA 91342",
                 "contact": "Christopher Lee",
                 "contact number": "661-670-6992",
                 "sunday service": "9:30 AM / 11:30 AM"
             },
             {
                 "id": "4153f6f3-0119-4294-9dd4-b12a912823f6",
                 "name": "Living Hope Community Church",
                 "address": "10000 Foothill Blvd, Lake View Terrace, CA 91342",
                 "contact": "Christopher Lee",
                 "contact number": "661-670-6992",
                 "sunday service": "9:30 AM / 11:30 AM"
             },
             {
                 "id": "c6e8e75f-3712-455f-825b-05f0feba59c3",
                 "name": "NewStory Church",
                 "address": "10000 Foothill Blvd, Lake View Terrace, CA 91342",
                 "contact": "Christopher Lee",
                 "contact number": "661-670-6992",
                 "sunday service": "9:30 AM / 11:30 AM"
             },
             {
                 "id": "2c04dbe9-4f3b-4b7d-a235-96ac83dec4b4",
                 "name": "Oriental Mission Church",
                 "address": "10000 Foothill Blvd, Lake View Terrace, CA 91342",
                 "contact": "Christopher Lee",
                 "contact number": "661-670-6992",
                 "sunday service": "9:30 AM / 11:30 AM"
             },
             {
                 "id": "a98b2935-d2d3-42d3-ac74-2dccd25c4207",
                 "name": "Reality LA",
                 "address": "10000 Foothill Blvd, Lake View Terrace, CA 91342",
                 "contact": "Christopher Lee",
                 "contact number": "661-670-6992",
                 "sunday service": "9:30 AM / 11:30 AM"
             },
             {
                 "id": "5a4abc63-867f-4f1a-8ae8-6c5288e44e6d",
                 "name": "Shalom Church of Southern California",
                 "address": "10000 Foothill Blvd, Lake View Terrace, CA 91342",
                 "contact": "Christopher Lee",
                 "contact number": "661-670-6992",
                 "sunday service": "9:30 AM / 11:30 AM"
             },
             {
                 "id": "08ee3373-efe5-4993-9930-d0bb5c37a6d1",
                 "name": "Tapestry LA",
                 "address": "10000 Foothill Blvd, Lake View Terrace, CA 91342",
                 "contact": "Christopher Lee",
                 "contact number": "661-670-6992",
                 "sunday service": "9:30 AM / 11:30 AM"
             },
             {
                 "id": "3c8dffb7-7782-4186-859c-b7ca1c1d2ec1",
                 "name": "The Vine Church of Eagle Rock",
                 "address": "10000 Foothill Blvd, Lake View Terrace, CA 91342",
                 "contact": "Christopher Lee",
                 "contact number": "661-670-6992",
                 "sunday service": "9:30 AM / 11:30 AM"
             },
             {
                 "id": "503e342a-231c-4944-a6b8-a70df8e3dab9",
                 "name": "Youngnak Church",
                 "address": "10000 Foothill Blvd, Lake View Terrace, CA 91342",
                 "contact": "Christopher Lee",
                 "contact number": "661-670-6992",
                 "sunday service": "9:30 AM / 11:30 AM"
             }
         ]
     },
     {
         "name": "Contact Us",
         "id": "00ea345f-d63d-48ea-b4ed-4cb9cc75b219",
         "items": [
             {
                 "id": "55e3c4bf-abaa-4cc2-ab53-427d70cf08c2",
                 "name": "Contact 1",
                 "email": "abc@usc.edu",
                 "phone": "123-456-7890"
             },
             {
                 "id": "d30641c6-3040-4825-9dd8-a6e447cac030",
                 "name": "Contact 2",
                 "email": "abc@usc.edu",
                 "phone": "123-456-7890"
             },
             {
                 "id": "0b95b8a3-706a-4af8-9bb3-60e0502e36c4",
                 "name": "Contact 3",
                 "email": "abc@usc.edu",
                 "phone": "123-456-7890"
             },
             {
                 "id": "47412f74-8513-4ba0-87fe-8c35843b4f41",
                 "name": "Contact 4",
                 "email": "abc@usc.edu",
                 "phone": "123-456-7890"
             }
         ]
     },
     {
         "name": "Map",
         "id": "123886e7-2906-459c-9e4f-c1d41bb9f97e",
         "items": [
             {
                 "id": "91be3318-4869-4cee-8983-8d530c1bd23d",
                 "name": "1234 Main St",
                 "description": "Description of map"
             }
         ]
     }
 ]

 */
