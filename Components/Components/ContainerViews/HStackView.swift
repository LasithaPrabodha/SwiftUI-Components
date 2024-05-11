//
//  HStackView.swift
//  Components
//
//  Created by Lasitha Weligampola on 2024-03-15.
//

import SwiftUI

struct HStackView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 20){
            Image(systemName: "book.fill")
            Text("Lasitha Prabodha")
            Spacer()
            Image(systemName: "icloud.and.arrow.down")
        }
    }
}

#Preview {
    HStackView()
}
