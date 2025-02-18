//
//  FeatureCard.swift
//  OnboardingFlow
//
//  Created by Carlos Hernandez on 18/2/25.
//

import SwiftUI

struct FeatureCard: View {
    let iconName: String
    let description: String
    var body: some View {
        HStack{
            Image(systemName: iconName)
                .font(.largeTitle)
            Text(description)
        }

    }
}

struct FeatureCard_Previews: PreviewProvider {
    static var previews: some View {
        FeatureCard(iconName: "person.2.crop.square.stack.fill", description: "A multiline description about a feature")
    }
}
