//
//  CTextField.swift
//  Components
//
//  Created by Lasitha Weligampola on 2024-03-15.
//

import SwiftUI

struct TextFieldView: View {
    @State var username : String = ""
    @State var nickname : String = ""
    
    var body: some View {
        
        VStack{
            TextField("User Name", text: $username, onEditingChanged: { (value) in
                print("onEditingChanged:\(self.username)")
            }) {
                print("onCommit:\(self.username)")
            }.textFieldStyle(RoundedBorderTextFieldStyle())
            
            TextField("Nick Name", text: $nickname)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
        }
        .padding()
        
    }
}

#Preview {
    TextFieldView()
}
