//
//  ContainerViews.swift
//  Components
//
//  Created by Lasitha Weligampola on 2024-03-15.
//

import SwiftUI

struct ContainerViews: View {
    @StateObject private var viewModel: DetailsViewModel
    
    init(component: Component) {
        _viewModel = StateObject(wrappedValue: DetailsViewModel(component: component))
    }
    
    var body: some View {
        VStack(alignment: .leading){
            
            // Load component view
            switch viewModel.component.name{
            case "HStack":
                HStackView()
            case "VStack":
                VStackView()
            case "ZStack":
                ZStackView()
            case "Form":
                FormView()
            case "NavigationView":
                NavigationStackView()
            case "Alerts":
                AlertView()
            case "Sheets":
                SheetView()
            default:
                Text("No examples for \(viewModel.component.name)")
            }
        }
    }
}

#Preview {
    ContainerViews(component: Component(name: "Text", type: .textInOut, icon: "text.aligncenter", description: "text", link: "link"))
}
