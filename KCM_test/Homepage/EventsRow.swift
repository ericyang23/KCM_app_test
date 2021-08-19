//
//  EventsRow.swift
//  KCM_test
//
//  Created by Eric Yang on 8/17/21.
//

import SwiftUI

struct EventsRow: View {
    let item: EventsItem
    
    var body: some View {
        VStack{
            Text(item.name)
        }
        
    }
}

struct EventsRow_Previews: PreviewProvider {
    static var previews: some View {
        EventsRow(item: EventsItem.example)
    }
}
