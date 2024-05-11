//
//  ProgressViewView.swift
//  Components
//
//  Created by Lasitha Weligampola on 2024-03-15.
//

import SwiftUI

struct ProgressViewView: View {
    let workoutDateRange = Date()...Date().addingTimeInterval(5*60)
    @State private var progress = 0.5
    @State private var showingAlert = false
    
    
    var body: some View {
        VStack{
            ProgressView(value: progress)
            Button("More") {
                if progress + 0.05 < 1 {
                    progress += 0.05
                } else {
                    progress = 1
                    showingAlert = true
                }
            }
            .padding(.bottom)
            
            ProgressView(timerInterval: workoutDateRange) {
                Text("Workout")
            }
        }.alert(isPresented: $showingAlert) {
            Alert(title: Text("Man!"), message: Text("Hold your horses!"))
        }
    }
}

#Preview {
    ProgressViewView()
}
