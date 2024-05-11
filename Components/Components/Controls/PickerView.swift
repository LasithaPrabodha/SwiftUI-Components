//
//  PickerView.swift
//  Components
//
//  Created by Lasitha Weligampola on 2024-03-15.
//

import SwiftUI

enum Flavor: String, CaseIterable, Identifiable {
    case chocolate, vanilla, strawberry
    var id: Self { self }
}

struct PickerView: View {
    @State private var selectedFlavor: Flavor = .chocolate
    
    var body: some View {
        Picker("Flavor", selection: $selectedFlavor) {
            Text("Chocolate").tag(Flavor.chocolate)
            Text("Vanilla").tag(Flavor.vanilla)
            Text("Strawberry").tag(Flavor.strawberry)
        }
    }
}

#Preview {
    PickerView()
}
