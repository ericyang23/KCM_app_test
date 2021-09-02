//
//  ContactDetail.swift
//  KCM_test
//
//  Created by Eric Yang on 8/05/21.
//

import SwiftUI

struct ContactDetail: View {
    let item: ContactItem
    
    var body: some View {
        VStack{
            HStack{
                Text("Name:")
                    .padding(.top)
                Text(item.contact)
                    .padding([.top, .trailing])
            }
            
            HStack{
                Text("Phone:")
                    .padding(.top)
                Link(item.phone, destination: URL(string: "imessage:"+item.phone)!)
                    .foregroundColor(.blue)
                    .padding([.top, .trailing])
            }
            
            HStack{
                Text("Email:")
                    .padding(.top)
                Link(item.email, destination: URL(string: "mailto:"+item.email)!)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    .padding([.top, .trailing])
            }
            
            Spacer()
        }
        .navigationTitle(item.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ContactDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ContactDetail(item: ContactItem.example)
        }
    }
}
