//
//  CLabel.swift
//  Components
//
//  Created by Lasitha Weligampola on 2024-03-15.
//

import SwiftUI

struct LabelView: View {
    var body: some View {
        Label("Lightning McQueen", systemImage: "bolt.fill")
        
        Label("Lightning McQueen", systemImage: "bolt.fill")
            .labelStyle(.titleOnly)
        
        Label("Lightning McQueen", systemImage: "bolt.fill")
            .labelStyle(.iconOnly)
    }
}

#Preview {
    LabelView()
}
