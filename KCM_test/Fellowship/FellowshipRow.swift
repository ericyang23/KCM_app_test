//
//  FellowshipRow.swift
//  KCM_test
//
//  Created by Eric Yang on 8/09/21.
//

import SwiftUI

struct FellowshipRow: View {
    let item: FellowshipItem
    
    var body: some View {
        VStack{
            Text(item.name)
        }
        
    }
}

struct FellowshipRow_Previews: PreviewProvider {
    static var previews: some View {
        FellowshipRow(item: FellowshipItem.example)
    }
}
