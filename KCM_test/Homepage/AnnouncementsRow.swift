//
//  ItemRow.swift
//  KCM_test
//
//  Created by Eric Yang on 8/05/21.
//

import SwiftUI

struct ItemRow: View {
    let item: HomeItem
    
    var body: some View {
        VStack{
            Text(item.name)
        }
        
    }
}

struct ItemRow_Previews: PreviewProvider {
    static var previews: some View {
        ItemRow(item: HomeItem.example)
    }
}
