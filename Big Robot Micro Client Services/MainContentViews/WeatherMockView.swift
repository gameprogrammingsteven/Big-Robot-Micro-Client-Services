//
//  WeatherMockView.swift
//  Big Robot Micro Client Services
//
//  Created by Stephen Johnson on 11/10/22.
//

import SwiftUI

struct WeatherMockView: View {
    
    @State private var temperatures = [Int]()
    let tempImages:[Image] = [Image(systemName:"sun.min"),
                         Image(systemName:"cloud.rain"),
                         Image(systemName:"cloud"),
                         Image(systemName:"sun.dust.circle"),
                         Image(systemName:"cloud.hail") ]
    
    let tempCount = 5
    
    var body: some View {
        VStack {
            Text("Weather")
                .foregroundColor(.white)
                .font(.title)
                .fontWeight(.bold)
                .padding(10)
                .background(Color.init(red: 0, green: 0.5, blue: 0, opacity: 0.2))
                .cornerRadius(3)
            Spacer()
            ScrollView(.horizontal) {
                //                HStack {
                Spacer()
                Divider()
                ZStack {
                    Rectangle()
                        .cornerRadius(22)
                        .padding()
                        .foregroundColor(Color.init(red: 0, green: 0, blue: 0, opacity: 0.13))
                        .frame(maxHeight: 530)
                    VStack {
                        Text("Sample Chart")
                            .fontWeight(.heavy)
                            .foregroundColor(.white)
                            .padding(8)
                            .frame(width: 215)
                            .background(Color.init(red: 0.2, green: 0.5, blue: 0.5))
                            .cornerRadius(10)
                        HStack(alignment: .bottom, spacing: 10) {
                            
                            if(temperatures.count >= 5) {
                                ForEach(0..<5, content: { i in
                                    let temp = temperatures[i]
                                    VStack {
                                        tempImages.randomElement()?.resizable()
                                            .aspectRatio(contentMode: ContentMode.fit)
                                            .frame(maxHeight: 25)
                                            
    //                                        .padding(EdgeInsets(top: 9, leading: 0, bottom: 9, trailing: 0))
                                        Text("\(temp)")
                                        Spacer()
                                        Rectangle().frame(width:40,height: CGFloat(temp) * 2.4, alignment: .bottom)
                                            .cornerRadius(4)
                                    }
                                    .frame(height: 330)
                                })
                            }
                        }
                        .background(Color.init(red: 0.8, green: 0.8, blue: 0.8))
                        .frame(width: UIScreen.main.bounds.width ,alignment: .center)
                    .padding(EdgeInsets(top: 10, leading: 0, bottom: 30, trailing: 0))
                    }
                    .shadow(radius: 3, x:5, y:5)
                }
                Divider()
                Spacer()
                Text("New Temps")
                    .foregroundColor(.white)
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(10)
                    .background(Color.init(red: 0, green: 0.5, blue: 0, opacity: 0.2))
                    .cornerRadius(3)
                    .onTapGesture {
                        nextWeather()
                    }
                Spacer()
            }
            //            }
            .background(.clear)
            
        }
        .background(Color.init(red: 0.4, green: 0.8, blue: 0.9))
        .onAppear(perform: {
            temperatures = (0..<tempCount).map { _ in
                Int.random(in: 1...99)
            }
        })
    }
    
    func nextWeather() {
        temperatures = (0..<tempCount).map { _ in
            Int.random(in: 1...99)
        }
    }
    
}

struct WeatherMockView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherMockView()
    }
}
