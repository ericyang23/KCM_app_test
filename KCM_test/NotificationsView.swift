//
//  NotificationsView.swift
//  KCM_test
//
//  Created by Eric Yang on 8/17/21.
//

import SwiftUI
import UserNotifications

struct NotificationsView: View {
    @State private var isToggle = false
    
    var body: some View {
        VStack {
            Button(action: {
                self.isToggle.toggle()
                UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { success, error in
                        if success {
                            print("All set!")
                        }
                        else if let error = error {
                            print(error.localizedDescription)
                        }
                    }
            }) {
                Image(systemName: "bell")
                Text("Click to allow notifications")
                Image(systemName: "bell")
            }
            
            Toggle("Notifications", isOn: $isToggle)
                .toggleStyle(SwitchToggleStyle(tint: .green))
                .padding()
            
            if isToggle {
                VStack{
                    Text("Notifications are ON")
                }
            }
            
            Button(action: {
                let content = UNMutableNotificationContent()
                content.title = "yo"
                content.subtitle = "come thru"
                content.sound = UNNotificationSound.default

                var datecomps = DateComponents()
                //mon=2, tue=3, wed=4, etc.
                //datecomps.weekday = 3
                datecomps.hour = 9
                //notify 30 min before event
                datecomps.minute = 43
                
                // show this notification on selected datetime
                let trigger =
                    UNCalendarNotificationTrigger(dateMatching: datecomps, repeats: false)
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
                .frame(height: 400)
        }
    }
    
    
}

struct NotificationsView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationsView()
    }
}
