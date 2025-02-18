//
//  WelcomePage.swift
//  OnboardingFlow
//
//  Created by Carlos Hernandez on 17/2/25.
//

import SwiftUI

struct WelcomePage: View {
    var body: some View {
        VStack{
            ZStack{
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: 150, height: 150)
                    .foregroundColor(.blue)
                    .opacity(0.4)
                Image(systemName: "figure.2.and.child.holdinghands")
                    .font(.system(size: 70))
                    .foregroundColor(.blue)
            }
            Text("Welcome to MyApp")
                .font(.title)
                .fontWeight(.semibold)
                .padding(.top, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                .padding(.bottom,20)
                .padding(.leading,30)
                .padding(.trailing,5)
            
            Text("Description text")
                .font(.title2)
        }
        .border(Color.orange, width: 1.5)
        .padding()
        .border(Color.purple, width: 1.5)
    }
}

struct WelcomePage_Previews: PreviewProvider {
    static var previews: some View {
        WelcomePage()
    }
}
