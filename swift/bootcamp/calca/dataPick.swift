//
//  dataPick.swift
//  calca
//
//  Created by Артур on 10.08.2021.
//

import SwiftUI

struct dataPick: View {
    @State var selectDate = Date()
    let start = Calendar.current.date(from: DateComponents(year: 2018)) ?? Date()
    let endDay = Date()
    var format: DateFormatter {
        let formating = DateFormatter()
        formating.dateStyle = .full
        return formating
    }
    var body: some View {
        VStack{
            Text("selcted date is:")
            Text(format.string(from: selectDate))
//        DatePicker("Select a date", selection: $selectDate)
//        DatePicker("Select a date", selection: $selectDate, displayedComponents: [.hourAndMinute])
        DatePicker("select a date", selection: $selectDate, in: start...endDay, displayedComponents: [.hourAndMinute])
            .accentColor(.red)
            .datePickerStyle(
//                CompactDatePickerStyle()
//                GraphicalDatePickerStyle()
                WheelDatePickerStyle()
            )
        }
    }
}

struct dataPick_Previews: PreviewProvider {
    static var previews: some View {
        dataPick()
    }
}
