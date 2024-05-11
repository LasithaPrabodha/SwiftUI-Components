//
//  ImageView.swift
//  Components
//
//  Created by Lasitha Weligampola on 2024-03-15.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        Image("campus")
            .resizable()
            .aspectRatio(contentMode: .fit)
        
        
        Image("campus")
            .resizable()
            .frame(width: 320, height: 300)
            .mask(
                Text("Fanshawe!")
                    .font(Font.system(size: 64).bold()))
        
        Image(systemName: "arkit")
            .resizable()
            .frame(width: 50, height: 50)
            .foregroundColor(.orange)
        
        Image("campus")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .border(Color.orange)
        
        Image("campus")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .border(Color.orange, width: 10)
        
        Image("campus")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .opacity(0.5)
        
        
        Image("campus")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .shadow(color: .purple, radius: 20, x: 20, y: 20)
    }
}

#Preview {
    ImageView()
}
