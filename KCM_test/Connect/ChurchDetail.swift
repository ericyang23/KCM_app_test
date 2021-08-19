//
//  ContactDetail.swift
//  KCM_test
//
//  Created by Eric Yang on 8/05/21.
//

import SwiftUI

struct ChurchDetail: View {
    let item: ChurchItem
    
    var body: some View {
        VStack{
            HStack{
                Text("Contact:")
                    .padding([.top, .leading])
                Text(item.contact)
                    .padding([.top, .trailing])
                Spacer()
            }
            HStack{
                Text("Phone:")
                    .padding([.top, .leading])
                Link(item.phone, destination: URL(string: "imessage:"+item.phone)!)
                    .foregroundColor(.blue)
                    .padding([.top, .trailing])
                Spacer()
            }
            HStack{
                Text("Address:")
                    .padding([.top, .leading])
                Text(item.address)
                    .padding([.top, .trailing])
                Spacer()
            }
            HStack{
                Text("Sunday Service:")
                    .padding([.top, .leading])
                Text(item.sunday)
                    .padding([.top, .trailing])
                Spacer()
            }
            HStack{
                Text("Friday Service:")
                    .padding([.top, .leading])
                Text(item.friday)
                    .padding([.top, .trailing])
                Spacer()
            }
            Spacer()
        }
        .navigationTitle(item.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ChurchDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ChurchDetail(item: ChurchItem.example)
        }
    }
}

