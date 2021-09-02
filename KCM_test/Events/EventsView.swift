//
//  EventsView.swift
//  KCM_test
//
//  Created by Eric Yang on 9/2/21.
//

import SwiftUI

struct EventsView: View {
    
    var body: some View {
        VStack {
            NavigationView {
                List {
                    Section(header: Text("Sign-Up Links")) {
                        Link("Freshman In N Out", destination: URL(string: "https://docs.google.com/spreadsheets/d/1d5vABYK-dWYJd5YJ4Yq3OfHPoSmXONBcBxHfx6lsPyA/edit#gid=0")!)
                            .foregroundColor(Color.purple)
                        
                        Link("Beach Day", destination: URL(string: "https://docs.google.com/spreadsheets/d/1d5vABYK-dWYJd5YJ4Yq3OfHPoSmXONBcBxHfx6lsPyA/edit#gid=0")!)
                            .foregroundColor(.blue)
                        
                        Link("Missions Rally Night", destination: URL(string: "https://docs.google.com/spreadsheets/d/1d5vABYK-dWYJd5YJ4Yq3OfHPoSmXONBcBxHfx6lsPyA/edit#gid=0")!)
                            .foregroundColor(.orange)
                        
                        Link("DPS Outreach", destination: URL(string: "https://docs.google.com/spreadsheets/d/1d5vABYK-dWYJd5YJ4Yq3OfHPoSmXONBcBxHfx6lsPyA/edit#gid=0")!)
                            .foregroundColor(.green)
                        
                        Link("WinterCon", destination: URL(string: "https://docs.google.com/spreadsheets/d/1d5vABYK-dWYJd5YJ4Yq3OfHPoSmXONBcBxHfx6lsPyA/edit#gid=0")!)
                            .foregroundColor(.blue)
                    }
                }
                .listStyle(GroupedListStyle())
                .navigationTitle("Upcoming Events")
            }
        }
    }
}

struct EventsView_Previews: PreviewProvider {
    static var previews: some View {
        EventsView()
    }
}
