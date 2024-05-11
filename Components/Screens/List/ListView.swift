//
//  ComponentsListView.swift
//  Components
//
//  Created by Lasitha Weligampola on 2024-03-07.
//

import SwiftUI

struct ListView: View {
    @StateObject var viewModel = ListViewModel()
    
    var body: some View {
        NavigationView {
            List (viewModel.filteredComponents(), id: \.title) { section in
                
                Section(header: Text(section.title)) {
                    ForEach(section.components, id: \.name) { component in
                        NavigationLink{
                            // As we already have the component we pass it along to the details view
                            DetailsView(component: component)
                        } label:{
                            Label(component.name, systemImage:component.icon)
                        }
                    }
                }
                
                
            }
            .overlay(Group {
                if viewModel.filteredComponents().isEmpty {
                    Text("Oops, looks like there's no match...")
                }
            })
            .navigationTitle("Components")
            .searchable(text: $viewModel.searchTerm)
        }
    }}

#Preview {
    ListView()
}
