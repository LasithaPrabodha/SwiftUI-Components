//
//  ControlsView.swift
//  Components
//
//  Created by Lasitha Weligampola on 2024-03-15.
//

import SwiftUI

struct ControlsView: View {
    @StateObject private var viewModel: DetailsViewModel
    
    init(component: Component) {
        _viewModel = StateObject(wrappedValue: DetailsViewModel(component: component))
    }
    
    var body: some View {
        VStack(alignment: .leading){
            
            // Load component view
            switch viewModel.component.name{
            case "Button":
                ButtonView()
            case "Menu":
                MenuView()
            case "Link":
                LinkView()
            case "Slider":
                SliderView()
            case "Stepper":
                StepperView()
            case "Toggle":
                ToggleView()
            case "Picker":
                PickerView()
            case "DatePicker":
                DatePickerView()
            case "ColorPicker":
                ColorPickerView()
            case "ProgressView":
                ProgressViewView()
            default:
                Text("No examples for \(viewModel.component.name)")
            }
        }
    }
}

#Preview {
    ControlsView(component: Component(name: "Text", type: .textInOut, icon: "text.aligncenter", description: "text", link: "link"))
}
