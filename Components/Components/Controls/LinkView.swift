//
//  LinkView.swift
//  Components
//
//  Created by Lasitha Weligampola on 2024-03-15.
//

import SwiftUI

struct LinkView: View {
    private var websiteUrl:String = "https://www.lasitha.dev"
    var body: some View {
        Link("www.lasitha.dev", destination: URL(string: websiteUrl)!)
            .environment(\.openURL, OpenURLAction { url in
                if let scheme = url.scheme?.lowercased() {
                    
                    if scheme == "https" || scheme == "http"{
                        if UIApplication.shared.canOpenURL(url){
                            // use the available apps in user's phone
                            UIApplication.shared.open(url)
                        }
                    }
                }
                return .handled
            })
    }
}

#Preview {
    LinkView()
}
