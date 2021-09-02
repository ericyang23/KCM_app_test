//
//  MainView.swift
//  KCM_test
//
//  Created by Eric Yang on 8/05/21.
//

import SwiftUI

struct MainView: View {
    //test
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            EventsView()
                .tabItem {
                    Label("Events", systemImage: "calendar")
                }
            
//            CalendarView(
//                    ascVisits: Visit.mocks(
//                    start: .DaysFromToday(-30*36),
//                    end: .DaysFromToday(30*36)),
//                    initialMonth: Date()
//                )
//                .tabItem{
//                    Label("Calendar", systemImage: "calendar")
//                }
            
            FellowshipView(
                )
            .tabItem {
                Label("Fellowship", systemImage: "person.2")
            }
            
            MapView()
                .tabItem{
                    Label("Map", systemImage: "map")
                }
                .ignoresSafeArea(edges: .top)
            
            ConnectView()
                .tabItem {
                    Label("Connect", systemImage: "envelope")
                }
//            NotificationsView()
//                .tabItem {
//                    Label("notifs", systemImage: "map")
//                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

