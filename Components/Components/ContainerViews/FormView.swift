//
//  FormView.swift
//  Components
//
//  Created by Lasitha Weligampola on 2024-03-15.
//

import SwiftUI

struct FormView: View {
    
    private let languages = ["Swift", "Objective-C"]
    @State private var selectedLanguage = 0
    @State var workingYear: Double = 2
    @State var enableNotification = false
    
    var body: some View {
        Form {
            Picker(selection: $selectedLanguage, label: Text("Languages")) {
                ForEach(0 ..< languages.count, id: \.self) {
                    Text(languages[$0]).tag($0)
                }
            }.pickerStyle(SegmentedPickerStyle())
            HStack{
                Text("Working years")
                Slider(value: $workingYear, in: 1...10, step: 1)
            }
            
            Toggle(isOn: $enableNotification) {
                Text("Enable Notification")
            }
            
            Button(action: {
                print("Your programming language: \(languages[selectedLanguage])")
                print("Your working years: \(Int(workingYear))")
                print("Enable notification: \(enableNotification)")
            }) {
                Text("Submit")
            }
        }.frame(height: 250)
    }
}

#Preview {
    FormView()
}
