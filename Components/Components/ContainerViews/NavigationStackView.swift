//
//  NavigationStackView.swift
//  Components
//
//  Created by Lasitha Weligampola on 2024-03-15.
//

import SwiftUI

struct NavigationStackView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: SecondView()) {
                    Text("Go to Second View")
                }
            }
            .navigationTitle("First View")
        }
    }
}

struct SecondView: View {
    var body: some View {
        VStack {
            Text("Second View")
            NavigationLink(destination: ThirdView()) {
                Text("Go to Third View")
            }
        }
        .navigationTitle("Second View")
    }
}

struct ThirdView: View {
    var body: some View {
        VStack {
            Text("Third View")
        }
        .navigationTitle("Third View")
    }
}

#Preview {
    NavigationStackView()
}
