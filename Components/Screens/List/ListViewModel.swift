//
//  ComponentsListViewModel.swift
//  Components
//
//  Created by Lasitha Weligampola on 2024-03-07.
//

import Foundation

class ListViewModel: ObservableObject {
    @Published var sections: [CSection] = []
    @Published var searchTerm: String = ""
    private var allComponents: [Component] = []
    
    init() {
        allComponents = ComponentsManager.list
        sections = createSections(from: allComponents)
    }
    
    // Generate sections
    private func createSections(from components: [Component]) -> [CSection] {
        var sectionedComponents: [CSection] = []
        
        for type in ComponentType.allCases {
            let filtered = components.filter { $0.type == type }
            if !filtered.isEmpty {
                sectionedComponents.append(CSection(title: type.rawValue.capitalized, components: filtered))
            }
        }
        
        return sectionedComponents
    }
    
    // Filter components according to search value
    func filteredComponents() -> [CSection] {
        if searchTerm.isEmpty {
            return sections
        } else {
            let filteredAll = allComponents.filter { $0.name.lowercased().contains(searchTerm.lowercased()) }
            return createSections(from: filteredAll)
        }
    }
}
