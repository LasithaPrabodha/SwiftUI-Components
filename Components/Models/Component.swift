//
//  Component.swift
//  Components
//
//  Created by Lasitha Weligampola on 2024-03-07.
//

import Foundation

enum ComponentType: String, CaseIterable {
    case textInOut = "Text Input/Output"
    case controls = "Controls"
    case containerViews = "Container Views"
    case list = "List"
}

class Component {
    let name: String
    let type: ComponentType
    let icon: String
    let description: String
    let link: String
    
    init(name: String, type:ComponentType, icon: String,  description:String , link:String){
        self.name = name
        self.type = type
        self.icon = icon
        self.description = description
        self.link = link
    }
}
