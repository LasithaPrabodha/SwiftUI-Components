//
//  VStackView.swift
//  Components
//
//  Created by Lasitha Weligampola on 2024-03-15.
//

import SwiftUI

struct VStackView: View {
    var body: some View {
        VStack{
            Text("Apple")
                .font(.largeTitle)
            Image(systemName: "apple.logo")
                .resizable()
                .scaledToFit()
                .frame(width: 50,height: 50)
            Text("An apple is the edible fruit of a number of trees, known for its juicy, green, or red fruits. The tree (Malus spp.) is grown worldwide. Its fruit is low-cost, popular, and common all over the earth.")
                .font(.body)
                .lineLimit(nil)
                .frame(height: 200)
        }
    }
}

#Preview {
    VStackView()
}
