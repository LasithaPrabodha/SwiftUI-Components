//
//  ToggleView.swift
//  Components
//
//  Created by Lasitha Weligampola on 2024-03-15.
//

import SwiftUI

struct ToggleView: View {
    @State var showNotification = true
    var body: some View {
        VStack {
            Text("Show Notification: ")
            + Text("\(self.showNotification.description)")
                .foregroundColor(.green)
                .bold()
            
            
            Toggle("Show notification:", isOn: $showNotification)
                .padding()
        }
    }
}

#Preview {
    ToggleView()
}
