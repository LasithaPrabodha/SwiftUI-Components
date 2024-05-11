//
//  SliderView.swift
//  Components
//
//  Created by Lasitha Weligampola on 2024-03-15.
//

import SwiftUI

struct SliderView: View {
    
    @State var temperature: Double = 0
    var body: some View {
        VStack { 
            HStack{
                Image(systemName: "snowflake")
                
                Slider(value: $temperature, in: -20...40, step: 2) { (item) in
                    print(item)
                }.accentColor(.pink).colorInvert()
                
                Image(systemName: "sun.max.fill")
            }.padding()
            
            Text("The temperature is \(Int(temperature)).")
        }
    }
}

#Preview {
    SliderView()
}
