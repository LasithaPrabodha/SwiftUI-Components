//
//  CText.swift
//  Components
//
//  Created by Lasitha Weligampola on 2024-03-13.
//

import SwiftUI

struct TextView: View {
    private var text:String = "Hello World!"
    var body: some View {
        VStack{
            
            //Basic style
            Text(text)
                .bold()
            
            Text(text)
                .italic()
            
            Text(text)
                .underline()
            
            Text(text)
                .underline(true, color: .orange)
            
            Text(text)
                .strikethrough()
            
            Text(text)
                .strikethrough(true, color: .orange)
            
            Text(text)
                .foregroundColor(Color.orange)
            
            Text(text)
                .baselineOffset(CGFloat(5.0))
                .background(Color.orange)
            
            Text(text)
                .background(Image("Picture"), alignment: .bottom)
            
            //Font
            VStack{
                Text(text)
                    .font(.footnote)
                
                Text(text)
                    .font(.system(size: 36))
                
                Text(text)
                    .font(.system(.title, design: .monospaced))
                
                Text(text)
                    .font(.custom("BradleyHandITCTT-Bold", size: 36))
                
                Text(text)
                    .fontWeight(Font.Weight.heavy)
                
                Text(text)
                    .fontWeight(Font.Weight.ultraLight)
            }
        }
    }
}

#Preview {
    TextView()
}
