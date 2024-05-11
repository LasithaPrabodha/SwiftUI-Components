//
//  TextIO.swift
//  Components
//
//  Created by Lasitha Weligampola on 2024-03-08.
//

import SwiftUI

struct TextIOView: View {
    @StateObject private var viewModel: DetailsViewModel
    
    init(component: Component) {
        _viewModel = StateObject(wrappedValue: DetailsViewModel(component: component))
    }
    
    var body: some View {
        VStack(alignment: .leading){
            
            // Load component view
            switch viewModel.component.name{
            case "Text":
                TextView()
            case "Label":
                LabelView()
            case "TextField":
                TextFieldView()
            case "SecureField":
                SecureFieldView()
            case "TextArea":
                TextEditorView()
            case "Image":
                ImageView()
            default:
                Text("No examples for \(viewModel.component.name)")
            }
        }
    }
}

#Preview {
    TextIOView(component: Component(name: "Text", type: .textInOut, icon: "text.aligncenter", description: "text", link: "link"))
}
