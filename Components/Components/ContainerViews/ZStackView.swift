//
//  ZStackView.swift
//  Components
//
//  Created by Lasitha Weligampola on 2024-03-15.
//

import SwiftUI

struct ZStackView: View {
    var body: some View {
        ZStack(alignment: .center){
            Image("beach")
                .resizable()
                .frame(width: UIScreen.main.bounds.width - 40, height: UIScreen.main.bounds.width - 40)
                .clipShape(Circle())
            
            Text("DONDRA LIGHTHOUSE - Galle, Sri Lanka")
                .font(.system(size: 24))
                .frame(width: 300, height: 300, alignment: .center)
                .foregroundColor(.white)
            
            
        }
    }
}

#Preview {
    ZStackView()
}
