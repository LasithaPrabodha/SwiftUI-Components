//
//  ColorPickerView.swift
//  Components
//
//  Created by Lasitha Weligampola on 2024-03-15.
//

import SwiftUI

struct ColorPickerView: View {
    @State private var bgColor = Color(.sRGB, red: 0.98, green: 0.9, blue: 0.2)
    
    
    var body: some View {
        VStack {
            ColorPicker("Pick Your Color:", selection: $bgColor)
        }
    }
}

#Preview {
    ColorPickerView()
}
