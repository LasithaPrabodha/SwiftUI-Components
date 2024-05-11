//
//  CSecureField.swift
//  Components
//
//  Created by Lasitha Weligampola on 2024-03-15.
//

import SwiftUI

struct SecureFieldView: View {
    @State var password: String = ""
    
    var body: some View {
        VStack{
            SecureField("Your password", text: $password) {
                print("Your password is \(self.password)!")
            }
            .textFieldStyle(RoundedBorderTextFieldStyle())
            
        }
        .padding()
        
    }
}

#Preview {
    SecureFieldView()
}
