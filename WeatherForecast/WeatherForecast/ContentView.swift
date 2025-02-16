//
//  ContentView.swift
//  WeatherForecast
//
//  Created by Carlos Hernandez on 9/2/25.
//

import SwiftUI

struct ContentView: View {
    @State private var lista = false
    var body: some View {
        VStack{
            Text("Pulsa en el boton para verlo todo o por lista")
            Button(action: {
                lista.toggle()
            }){
                Text("Pulsa Aqui")
                    .padding()
                    .foregroundColor(.blue)
                    .cornerRadius(10)
            }
            if(lista){
                HStack{
                    DayForecast(day: "Mon", climate: "sun", high: 33, low: 20)
                    DayForecast(day: "Tue", climate: "sun and clouds", high: 25, low: 14)
                    DayForecast(day: "Wed", climate: "clouds", high: 18, low: 11)
                }
                HStack{
                    DayForecast(day: "Thu", climate: "rain", high: 14, low: 7)
                    DayForecast(day: "Fri", climate: "storm", high: 10, low: 4)
                    DayForecast(day: "Sat", climate: "snow", high: 5, low: -5)
                }
                HStack{
                    DayForecast(day: "Sun", climate: "fog", high: 12, low: 4)
                }
            }
            else{
                let forecasts = [
                    DayForecast(day: "Mon", climate: "sun", high: 33, low: 20),
                    DayForecast(day: "Tue", climate: "sun and clouds", high: 25, low: 14),
                    DayForecast(day: "Wed", climate: "clouds", high: 18, low: 11),
                    DayForecast(day: "Thu", climate: "rain", high: 14, low: 7),
                    DayForecast(day: "Fri", climate: "storm", high: 10, low: 4),
                    DayForecast(day: "Sat", climate: "snow", high: 5, low: -5),
                    DayForecast(day: "Sun", climate: "fog", high: 12, low: 4)
                ]
                ScrollView(.horizontal){
                    HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 10, content: {
                        ForEach(forecasts, id: \.day){
                            forecast in forecast
                        }
                    })
                    .padding()
                }
            }
        }
        
    }
}

struct DayForecast: View {
    let day: String
    let climate:String
    let high: Int
    let low: Int
    
    var iconName:String {
        switch climate {
        case "sun":
            return "sun.max.fill"
        case "sun and clouds":
            return "cloud.sun.fill"
        case "clouds":
            return "cloud.fill"
        case "rain":
            return "cloud.rain.fill"
        case "storm":
            return "cloud.bolt.fill"
        case "snow":
            return "cloud.snow.fill"
        case "fog":
            return "cloud.fog.fill"
        default:
            return "questionmark"
        }
    }
    
    var colorTLow:Color{
        if(low<10){
            return Color.blue
        }else{
            return Color.primary
        }
    }
    var colorTHigh:Color{
        if(high>=25){
            return Color.red
        }else{
            return Color.primary
        }
    }
    var body: some View{
        VStack{
            Text(day)
                .font(Font.largeTitle)
            Image(systemName: iconName)
                .padding(5)
            Text("High: \(high)º")
                .fontWeight(.semibold)
                .foregroundColor(colorTHigh)
            Text("Low: \(low)º")
                .fontWeight(Font.Weight.medium)
                .foregroundColor(colorTLow)
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
