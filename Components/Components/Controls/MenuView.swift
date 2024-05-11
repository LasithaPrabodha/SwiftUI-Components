//
//  MenuView.swift
//  Components
//
//  Created by Lasitha Weligampola on 2024-03-15.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        Menu("Actions") {
            Button("Duplicate", action: {})
            Button("Rename", action: {})
            Button("Delete…", action: {})
            Menu("Copy") {
                Button("Copy", action: {})
                Button("Copy Formatted", action: {})
                Button("Copy Library Path", action: {})
            }
        }
    }
}

#Preview {
    MenuView()
}
