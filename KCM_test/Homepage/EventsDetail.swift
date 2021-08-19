//
//  EventsDetail.swift
//  KCM_test
//
//  Created by Eric Yang on 8/17/21.
//

import SwiftUI

struct EventsDetail: View {
    let item: EventsItem
    
    var body: some View {
        VStack{
            
            Button(action: {
                let content = UNMutableNotificationContent()
                content.title = item.name
                content.subtitle = "come thru"
                content.sound = UNNotificationSound.default

                var datecomps = DateComponents()
                //mon=2, tue=3, wed=4, etc.
                //datecomps.weekday = item.day
                //notify 1 hr before event
                datecomps.hour = item.start_hour - 1
                datecomps.minute = item.start_min
                
                // show this notification on selected datetime
                let trigger =
                    UNCalendarNotificationTrigger(dateMatching: datecomps, repeats: false)
                //print next trigger to terminal
                print(trigger.nextTriggerDate() ?? "nil")
                // choose a random identifier
                let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)

                // add our notification request
                UNUserNotificationCenter.current().add(request)
            }) {
                Image(systemName: "bell.fill")
                Text("Get notifications for this event")
                Image(systemName: "bell.fill")
            }
            Spacer()
                .frame(height: 30)
            
            Text("image from VAM")
            //Image(item.mainImage)
            //    resizable()
            //    .scaledToFit()
            Text(item.description)
                .padding()
            Spacer()
                .frame(height: 400)
        }
        .navigationTitle(item.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct EventsDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            EventsDetail(item: EventsItem.example)
        }
    }
}
