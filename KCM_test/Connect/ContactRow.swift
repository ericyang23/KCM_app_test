//
//  ContactRow.swift
//  KCM_test
//
//  Created by Eric Yang on 8/05/21.
//

import SwiftUI

struct ContactRow: View {
    let item: ContactItem
    
    var body: some View {
        VStack{
            Text(item.name)
        }
        
    }
}

struct ContactRow_Previews: PreviewProvider {
    static var previews: some View {
        ContactRow(item: ContactItem.example)
    }
}
