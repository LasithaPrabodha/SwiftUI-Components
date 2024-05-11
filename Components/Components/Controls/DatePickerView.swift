//
//  DatePickerView.swift
//  Components
//
//  Created by Lasitha Weligampola on 2024-03-15.
//

import SwiftUI

struct DatePickerView: View {
    var myDateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter
    }
    
    @State var selectedDate = Date()
    var body: some View {
        VStack {
            DatePicker("Time",selection: $selectedDate, displayedComponents: .hourAndMinute)
            
            DatePicker("Date", selection: $selectedDate, displayedComponents: .date)
            
            DatePicker("Date & Time", selection: $selectedDate,in: Date()...Date().advanced(by: 7*24*3600), displayedComponents: [.date, .hourAndMinute])
            
            DatePicker("Calendar", selection: $selectedDate, displayedComponents: .date)
                .datePickerStyle(.graphical)
            
            Text("Your Choice: \(selectedDate, formatter: myDateFormatter)")
        }
    }
}

#Preview {
    DatePickerView()
}
