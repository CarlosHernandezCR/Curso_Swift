//
//  ContentView.swift
//  WeatherForecast
//
//  Created by Carlos Hernandez on 9/2/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            DayForecast(day: "Mon", isRainy: false, high: 70, low: 50)
            DayForecast(day: "Tue", isRainy: true, high: 60, low: 40)
        }
    }
}

struct DayForecast: View {
    let day: String
    let isRainy:Bool
    let high: Int
    let low: Int
    
    var iconName:String {
        if isRainy{
            return "cloud.rain.fill"
        } else {
            return "sun.max.fill"
        }
    }
    
    var iconColor: Color{
        if isRainy{
            return Color.blue
        } else {
            return Color.yellow
        }
    }
    var body: some View{
        VStack{
            Text(day)
                .font(Font.largeTitle)
            Image(systemName: iconName)
                .foregroundColor(iconColor)
                .padding(5)
            Text("High: \(high)º")
                .fontWeight(.semibold)
            Text("Low: \(low)º")
                .fontWeight(Font.Weight.medium)
                .foregroundColor(Color.secondary)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
