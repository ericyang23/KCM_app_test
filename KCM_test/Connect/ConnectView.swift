//
//  ConnectView.swift
//  KCM_test
//
//  Created by Eric Yang on 8/05/21.
//

import SwiftUI

struct ConnectView: View {
    
    let church = Bundle.main.decode([ChurchSection].self, from: "churches.json")
    let contact = Bundle.main.decode([ContactSection].self, from: "contacts.json")
    
    
    var body: some View {
        VStack {
            
            ZStack{
                Color(hue: 0.4, saturation: 0.3, brightness:0.8)
                    .edgesIgnoringSafeArea(.all)
                    .frame(height:60)
                Text("Connect")
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding()
                    .font(.title2)
            }

            NavigationView {
                List {
                    ForEach(church) { section in
                        Section(header: Text(section.name)) {
                        
                            ForEach(section.items) { item in
                                NavigationLink(destination: ChurchDetail(item: item)) {
                                    ChurchRow(item: item)
                                }
                            }
                        }
                    }
                    ForEach(contact) { section in
                        Section(header: Text(section.name)) {

                            ForEach(section.items) { item in
                                NavigationLink(destination: ContactDetail(item: item)) {
                                    ContactRow(item: item)
                                }
                            }
                        }
                    }
                    Section(header: Text("Socials")) {
                        Link("Spotify", destination: URL(string: "https://open.spotify.com/user/vvvktk9au1ql8r1ffgcg8phw2?si=8S5WRtS8SQ2Xl5Q1Zsr2MA&nd=1")!)
                            .foregroundColor(.green)
                        Link("Facebook", destination: URL(string: "https://www.facebook.com/usckcm/")!)
                            .foregroundColor(.blue)
                        Link("Instagram", destination: URL(string: "https://www.instagram.com/usckcm/")!)
                            .foregroundColor(.purple)
                        Link("YouTube", destination: URL(string: "https://www.youtube.com/channel/UCqDnVQj6Fk4KIUluZjJilrQ/featured")!)
                            .foregroundColor(.red)
                        Link("Discord", destination: URL(string: "https://discord.gg/N6sVqR6S")!)
                            .foregroundColor(Color("royalBlue"))
                        
                        
                    }
                }
                .listStyle(GroupedListStyle())
                .navigationTitle("KCM is NOT a Church!")
                .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}

struct ConnectView_Previews: PreviewProvider {
    static var previews: some View {
        ConnectView()
    }
}
