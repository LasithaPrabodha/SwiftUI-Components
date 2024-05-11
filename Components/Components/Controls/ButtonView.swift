//
//  ButtonView.swift
//  Components
//
//  Created by Lasitha Weligampola on 2024-03-15.
//

import SwiftUI

struct ButtonView: View {
    private var folders = ["Documents", "Downloads","Recents"]
    
    var body: some View {
        Button("First button") {
            print("First button action.")
        }
        
        
        Button(action: {
            print("Second button action.")
        }) {
            Text("Second button")
        }
         
        Button(action: {
            print("padding for button.")
        }){
            Label("Third button", systemImage: "clock")
        }
        .padding()
        .background(Color.yellow)
        
        Button("Sign In", systemImage: "arrow.up"){
            print("Sign in.")
            
        }
        
        
      
         
    }
}

#Preview {
    ButtonView()
}
