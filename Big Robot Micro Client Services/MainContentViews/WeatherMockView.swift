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
            Text("Fake Weekly Casts")
                .font(.title)
                .padding()
            Spacer()
            ScrollView(.horizontal) {
                //                HStack {
                //                    Spacer()
                HStack(alignment: .bottom, spacing: 10) {
                    
                    if(temperatures.count >= 5) {
                        ForEach(0..<5, content: { i in
                            let temp = temperatures[i]
                            VStack {
                                tempImages.randomElement()
                                Text("\(temp)")
                                Spacer()
                                Rectangle().frame(width:40,height: CGFloat(temp) * 2, alignment: .bottom)
                            }
                            .frame(maxHeight: 255)
                        })
                    }
                }
                .background(.green)
                .frame(width: UIScreen.main.bounds.width ,alignment: .center)
                .padding(EdgeInsets(top: 10, leading: 0, bottom: 30, trailing: 0))
                //                    Spacer()
            }
            //            }
            .background(.clear)
            
        }
        .onAppear(perform: {
            temperatures = (0..<tempCount).map { _ in
                Int.random(in: 1...99)
            }
        })
    }
    
}

struct WeatherMockView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherMockView()
    }
}
