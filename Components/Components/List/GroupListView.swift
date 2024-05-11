//
//  GroupListView.swift
//  Components
//
//  Created by Lasitha Weligampola on 2024-03-15.
//

import SwiftUI

struct GroupListView: View {
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Section 1")) {
                    Text("Item 1")
                    Text("Item 2")
                }
                
                Section(header: Text("Section 2")) {
                    Text("Item 3")
                    Text("Item 4")
                }
            }
            .listStyle(GroupedListStyle())  
        }
    }
}

#Preview {
    GroupListView()
}
