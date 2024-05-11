//
//  StepperView.swift
//  Components
//
//  Created by Lasitha Weligampola on 2024-03-15.
//

import SwiftUI

struct StepperView: View {
    
    @State var temperature: Double = 0
    var body: some View {
        VStack {
            Stepper(label: {
                Text("Temperature: \(Int(temperature))")
            }, onIncrement: {
                self.temperature += 1
            }, onDecrement: {
                self.temperature -= 1
            })
            
        }
    }
}

#Preview {
    StepperView()
}
