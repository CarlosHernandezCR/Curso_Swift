//
//  ContentView.swift
//  ChatPrototype
//
//  Created by Carlos Hernandez on 31/1/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 25){
            //Image(systemName: "globe").imageScale(.large)
            Text("Knock, knock!")
                .padding()
                .background(Color.yellow)
            Text("Who's there?")
                .padding()
                .background(Color.red)
            Text("Your dad")
                .shadow(radius: 10)
                .padding()
                .background(Color.yellow)
            Text("Oh dad! Welcome")
                .padding()
                .background(Color.red)
                .shadow(radius: 10)
        }
        .padding()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
