//
//  ListViewModel.swift
//  wwcTracker
//
//  Created by Claudia Maciel on 1/19/24.
//

import Foundation

import SwiftData

class ListViewModel: ObservableObject {

    func formatDuration(start: Date, end: Date) -> String {
        let formatter = DateComponentsFormatter()
        formatter.unitsStyle = .positional
        formatter.allowedUnits = [.hour, .minute, .second]
        formatter.zeroFormattingBehavior = .pad

        if let durationString = formatter.string(from: start, to: end) {
            return durationString
        } else {
            return "Unknown"
        }
    }
    
    func customFormattedDate(from date: Date) -> String {

        let calendar = Calendar.current
        let dateFormatter = DateFormatter()
        if  calendar.isDateInToday(date) {
            return "Today"

        } else  if calendar.isDateInYesterday(date) {
            return "Yesterday"
        } else {
            dateFormatter.dateFormat = "MMMM dd, EEEE"
            return  dateFormatter.string(from: date)
        }
    }

//    let activities: [Activity] = [
//        Activity(
//            name: "walking 🚶",
//            duration: "01:35:08"
//        ),
//        Activity(
//            name: "finishing certifications",
//            duration: "03:40:04"
//        ),
//        Activity(
//            name: "setting up new dryer unit",
//            duration: "01:20:21"
//        ),
//        Activity(
//            name: "coding crunch time 😱",
//            duration: "09:30:10"
//        )
//    ]
}
