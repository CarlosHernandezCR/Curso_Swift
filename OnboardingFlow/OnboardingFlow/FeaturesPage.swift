//
//  FeaturesPage.swift
//  OnboardingFlow
//
//  Created by Carlos Hernandez on 18/2/25.
//

import SwiftUI

struct FeaturesPage: View {
    var body: some View {
        VStack{
            Text("Features")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .fontWeight(.semibold)
        }
        .padding()
    }
}

struct FeaturesPage_Previews: PreviewProvider {
    static var previews: some View {
        FeaturesPage()
    }
}
