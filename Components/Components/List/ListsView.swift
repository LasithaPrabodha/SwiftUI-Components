//
//  ListView.swift
//  Components
//
//  Created by Lasitha Weligampola on 2024-03-15.
//

import SwiftUI

struct ListsView: View {
    @StateObject private var viewModel: DetailsViewModel
    
    init(component: Component) {
        _viewModel = StateObject(wrappedValue: DetailsViewModel(component: component))
    }
    
    var body: some View {
        VStack(alignment: .leading){
            
            // Load component view
            switch viewModel.component.name{
            case "Plain":
                PlainListView() 
            case "Inset":
                InsetListView() 
            case "Grouped":
                GroupListView() 
            case "Inset Grouped":
                InsetGroupedListView() 
            case "Sidebar":
                SidebarListView() 
            default:
                Text("No examples for \(viewModel.component.name)")
            }
        }
    }
}

#Preview {
    ListsView(component: Component(name: "Text", type: .textInOut, icon: "text.aligncenter", description: "text", link: "link"))
}
