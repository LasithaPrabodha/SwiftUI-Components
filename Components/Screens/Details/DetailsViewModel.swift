//
//  ComponentDetailsViewModel.swift
//  Components
//
//  Created by Lasitha Weligampola on 2024-03-08.
//

import Foundation

class DetailsViewModel:ObservableObject{
    let component: Component
    let componentDescription: String
    
    init(component: Component) {
        self.component = component
        self.componentDescription = self.component.description
    }
}
