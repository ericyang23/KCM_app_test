//
//  ContactRow.swift
//  KCM_test
//
//  Created by Eric Yang on 8/05/21.
//

import SwiftUI

struct ChurchRow: View {
    let item: ChurchItem
    
    var body: some View {
        VStack{
            Text(item.name)
        }
        
    }
}

struct ChurchRow_Previews: PreviewProvider {
    static var previews: some View {
        ChurchRow(item: ChurchItem.example)
    }
}
