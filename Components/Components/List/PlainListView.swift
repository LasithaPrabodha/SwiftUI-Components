//
//  PlainView.swift
//  Components
//
//  Created by Lasitha Weligampola on 2024-03-15.
//

import SwiftUI

struct PlainListView: View {
    
    var body: some View {
        
        NavigationView {
            List{
                Text("Objective-C")
                Text("Swift")
                Text("Flutter")
            }
        }
    }
}

#Preview {
    PlainListView()
}
