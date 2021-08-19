//
//  CalendarView.swift
//  KCM_test
//
//  Created by Eric Yang on 8/05/21.
//

import SwiftUI
import ElegantCalendar

struct CalendarView: View {

    @ObservedObject private var calendarManager: ElegantCalendarManager

    let visitsByDay: [Date: [Visit]]

    @State private var calendarTheme: CalendarTheme = .red

    init(ascVisits: [Visit], initialMonth: Date?) {
        let configuration = CalendarConfiguration(
            calendar: currentCalendar,
            startDate: ascVisits.first!.arrivalDate,
            endDate: ascVisits.last!.arrivalDate)

        calendarManager = ElegantCalendarManager(
            configuration: configuration,
            initialMonth: initialMonth)

        visitsByDay = Dictionary(
            grouping: ascVisits,
            by: { currentCalendar.startOfDay(for: $0.arrivalDate) })

        calendarManager.datasource = self
        calendarManager.delegate = self
    }

    var body: some View {
        ZStack {
            //DarkThemePreview{
                ElegantCalendarView(calendarManager: calendarManager)
                    .theme(calendarTheme)
            //}
            VStack {
                Spacer()
            }
        }
    }
}

extension CalendarView: ElegantCalendarDataSource {

    func calendar(backgroundColorOpacityForDate date: Date) -> Double {
        let startOfDay = currentCalendar.startOfDay(for: date)
        return Double((visitsByDay[startOfDay]?.count ?? 0) + 0) / 4.5
    }
/*
    func calendar(canSelectDate date: Date) -> Bool {
        let day = currentCalendar.dateComponents([.day], from: date).day!
        return day != 4
    }
*/
    func calendar(viewForSelectedDate date: Date, dimensions size: CGSize) -> AnyView {
        let startOfDay = currentCalendar.startOfDay(for: date)
        return VisitsListView(visits: visitsByDay[startOfDay] ?? [], height: size.height).erased
    }
    
}

extension CalendarView: ElegantCalendarDelegate {

    func calendar(didSelectDay date: Date) {
        print("Selected date: \(date)")
    }

    func calendar(willDisplayMonth date: Date) {
        print("Month displayed: \(date)")
    }

    func calendar(didSelectMonth date: Date) {
        print("Selected month: \(date)")
    }

    func calendar(willDisplayYear date: Date) {
        print("Year displayed: \(date)")
    }

}

struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        //DarkThemePreview{
            CalendarView(ascVisits: Visit.mocks(start: .DaysFromToday(-365*2), end: .DaysFromToday(365*2)), initialMonth: nil)
        //}
    }
}
