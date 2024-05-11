//
//  AlertView.swift
//  Components
//
//  Created by Lasitha Weligampola on 2024-03-15.
//

import SwiftUI

struct AlertView: View {
    @State var isAlert = false
    
    var alert: Alert {
        Alert(title: Text("Question"),
              message: Text("Are you a student?"),
              primaryButton: .default(Text("Yes")) {
                    print("Yes, I'm a student.")
                },
              secondaryButton: .destructive(Text("No")) {
                    print("No, I'm not a student.")
                })
    }
    
    var body: some View {
        VStack {
            Button("Alert Sheet") {
                isAlert = true
            }
        }.alert(isPresented: $isAlert, content: {
            alert
        })
        
    }
}

#Preview {
    AlertView()
}
