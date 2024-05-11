//
//  ComponentDetailsView.swift
//  Components
//
//  Created by Lasitha Weligampola on 2024-03-08.
//

import SwiftUI

struct DetailsView: View {
    @StateObject private var viewModel: DetailsViewModel
    @State private var isPresentWebView = false
    
    var vmComponent: Component {
        return viewModel.component
    }
    
    init(component: Component) {
        _viewModel = StateObject(wrappedValue: DetailsViewModel(component: component))
    }
    
    var body: some View {
        ScrollView{
            VStack(alignment: .leading) {
                Text(viewModel.componentDescription)
                    .padding(.bottom)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Text("Usage")
                    .font(.headline)
                    .padding(.bottom)
                
                // Load Section view
                switch vmComponent.type {
                case .textInOut:
                    TextIOView(component: vmComponent)
                case .controls:
                    ControlsView(component: vmComponent)
                case .containerViews:
                    ContainerViews(component: vmComponent)
                case .list:
                    ListsView(component: vmComponent)
                }
            }
            .padding()
        }
        .navigationBarTitle(Text(vmComponent.name), displayMode: .inline)
        .navigationBarItems(trailing: Button {
            isPresentWebView = true
        } label: {
            Image(systemName: "doc")
        })
        .sheet(isPresented: $isPresentWebView) {
            NavigationStack {
                WebView(url: URL(string: vmComponent.link)!)
                    .ignoresSafeArea()
                    .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
    
}

#Preview {
    DetailsView(component: Component(name: "Text", type: .textInOut, icon: "text.aligncenter", description: "text", link: "link"))
}
