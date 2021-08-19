//
//  ItemDetail.swift
//  KCM_test
//
//  Created by Eric Yang on 8/05/21.
//

import SwiftUI

struct ItemDetail: View {
    let item: HomeItem
    
    var body: some View {
        VStack{
            
            //Image(item.mainImage)
            //    resizable()
            //    .scaledToFit()
            Text(item.description)
                .padding()
            Spacer()
        }
        .navigationTitle(item.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ItemDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ItemDetail(item: HomeItem.example)
        }
    }
}
