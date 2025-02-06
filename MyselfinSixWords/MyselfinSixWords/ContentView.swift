//
//  ContentView.swift
//  MyselfinSixWords
//
//  Created by Carlos Hernandez on 6/2/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .center, spacing:20){
            Text("This is a project where I will write 6 words that describe me:")
                .padding()
                .background(Color.blue)
                .border(Color.black, width:5)
                .cornerRadius(3.0)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            Text("PERSEVERANT")
                .bold()
                .italic()
                .underline()
                .padding()
                .background(Color.yellow)
                .border(Color.green, width: 5)
                .contrast(3.0)
            Text("HARD-WORKER")
                .bold()
                .italic()
                .background(Color.gray)
                .cornerRadius(10)
                .padding()
            Text("MOTIVATED")
                .bold()
                .italic()
                .foregroundColor(.blue)
                .padding()
                .background(Color.black)
                .accentColor(.green)
            Text("COLLABORATIVE")
                .font(.title3)
                .baselineOffset(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
                .multilineTextAlignment(.leading)
                .foregroundColor(.green)
                .padding()
                .background(Color.orange)
                .cornerRadius(30)
            Text("LEADER")
                .font(.callout)
                .multilineTextAlignment(.trailing)
                .background(Color.pink)
                .padding()
                .border(Color.blue, width: 5)
            Text("DEDICATED")
                .font(.largeTitle)
                .underline()
                .italic()
                .bold()
                .shadow(radius: 60)
                .foregroundColor(Color.purple)
            Text("LAZY")
                .font(.footnote)
                .strikethrough(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/, color: Color.red)
                .opacity(0.5)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
