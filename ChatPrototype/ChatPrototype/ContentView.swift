//
//  ContentView.swift
//  ChatPrototype
//
//  Created by Carlos Hernandez on 31/1/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            //Image(systemName: "globe").imageScale(.large)
            Text("Knock, knock!")
                .padding()
                .background(Color.yellow)
            Text("Who's there?")
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
