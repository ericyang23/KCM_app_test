//
//  DaysFromToday.swift
//  KCM_test
//
//  Created by Eric Yang on 8/06/21.
//

import Foundation

extension Date {

    static func DaysFromToday(_ days: Int) -> Date {
        Date().addingTimeInterval(TimeInterval(60*60*24*days))
    }

}
