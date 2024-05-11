//
//  SidebarListView.swift
//  Components
//
//  Created by Lasitha Weligampola on 2024-03-15.
//

import SwiftUI

struct SidebarListView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink {
                  Text("About")
                } label: {
                  Label("About", systemImage: "info.circle")
                }
                NavigationLink {
                  Text("Settings")
                } label: {
                  Label("Settings", systemImage: "gear")
                }
            }
            .listStyle(SidebarListStyle())
            .navigationTitle("Sidebar")
           
            Text("Please select section")
                .font(.largeTitle)
        }
    }
}

#Preview {
    SidebarListView()
}
