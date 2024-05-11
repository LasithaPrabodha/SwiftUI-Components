//
//  CTextArea.swift
//  Components
//
//  Created by Lasitha Weligampola on 2024-03-15.
//

import SwiftUI

struct TextEditorView: View {
    @State private var fullText: String = "This is some editable text..."
    var body: some View {
        
        TextEditor(text: $fullText)
            .frame(width: 300, height: 200) 
        
        TextEditor(text: $fullText)
            .frame(width: 300, height: 200)
            .foregroundColor(Color.gray)
            .font(.custom("HelveticaNeue", size: 13))
        
        
        TextEditor(text: $fullText)
            .frame(width: 300, height: 200)
            .foregroundColor(Color.gray)
            .font(.custom("HelveticaNeue", size: 13))
            .lineSpacing(5)
    }
}

#Preview {
    TextEditorView()
}
