//
//  InsetView.swift
//  Components
//
//  Created by Lasitha Weligampola on 2024-03-15.
//

import SwiftUI

struct InsetListView: View {
    
    var body: some View {
        NavigationView {
            
            List{
                Text("Objective-C")
                Text("Swift")
                Text("Flutter")
            }
            .listStyle(InsetListStyle())
        }
        
    }
     
}

#Preview {
    InsetListView()
}
