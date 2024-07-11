//
//  CustomCalendarView.swift
//  CheapTickets
//
//  Created by Denis Raiko on 10.07.24.
//

import SwiftUI

struct CustomCalendarView: View {
    @Binding var date: Date?

    var body: some View {
        DatePicker("label", selection: Binding(
            get: { date ?? Date() },
            set: { date = $0 }
        ), displayedComponents: [.date])
        .datePickerStyle(.graphical)
        .preferredColorScheme(.dark)
    }
}




