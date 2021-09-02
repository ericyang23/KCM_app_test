//
//  ContentView.swift
//  KCM_test
//
//  Created by Eric Yang on 7/22/21.
//

import SwiftUI

struct HomeView: View {
    
    let home = Bundle.main.decode([HomeSection].self, from: "announcements.json")
    let events = Bundle.main.decode([EventsSection].self, from: "events.json")
    
    var body: some View {
        VStack {
            ZStack{
                Color(hue: 0.0, saturation: 0.65, brightness:0.85)
                    .edgesIgnoringSafeArea(.all)
                    .frame(height:60)
                Text("Home")
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding()
                    .font(.title2)
            }
            NavigationView {
                List {
                    Section(header: Text("Mission Statement")) {
                        Text("Hi this is supposed to be the mission statement for KCM")
                            .lineSpacing(/*@START_MENU_TOKEN@*/6.0/*@END_MENU_TOKEN@*/)
                    }
                
                    ForEach(home) { section in
                        Section(header: Text(section.name)) {
                            ForEach(section.items) { item in
                                NavigationLink(destination: ItemDetail(item: item)) {
                                    ItemRow(item: item)
                                }
                            }
                        }
                    }
                    
                    ForEach(events) { section in
                        Section(header: Text(section.name)) {
                            ForEach(section.items) { item in
                                NavigationLink(destination: EventsDetail(item: item)) {
                                    EventsRow(item: item)
                                }
                            }
                        }
                    }
                    
                    Section(header: Text("Forms")) {
                        Link("Prayer Request Form", destination: URL(string: "https://docs.google.com/spreadsheets/d/1d5vABYK-dWYJd5YJ4Yq3OfHPoSmXONBcBxHfx6lsPyA/edit#gid=0")!)
                            .foregroundColor(Color(red: 1.0, green: 0.75, blue: 0.0, opacity: 1.0))
                        
                        Link("Small Group App", destination: URL(string: "https://docs.google.com/spreadsheets/d/1d5vABYK-dWYJd5YJ4Yq3OfHPoSmXONBcBxHfx6lsPyA/edit#gid=0")!)
                            .foregroundColor(Color(red: 1.0, green: 0.75, blue: 0.0, opacity: 1.0))
                        
                        Link("STSM App", destination: URL(string: "https://docs.google.com/spreadsheets/d/1d5vABYK-dWYJd5YJ4Yq3OfHPoSmXONBcBxHfx6lsPyA/edit#gid=0")!)
                            .foregroundColor(Color(red: 1.0, green: 0.75, blue: 0.0, opacity: 1.0))
                        
                        Link("Amor App", destination: URL(string: "https://docs.google.com/spreadsheets/d/1d5vABYK-dWYJd5YJ4Yq3OfHPoSmXONBcBxHfx6lsPyA/edit#gid=0")!)
                            .foregroundColor(Color(red: 1.0, green: 0.75, blue: 0.0, opacity: 1.0))
                        }
                }
                .listStyle(GroupedListStyle())
                .navigationTitle("USC KCM")
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

