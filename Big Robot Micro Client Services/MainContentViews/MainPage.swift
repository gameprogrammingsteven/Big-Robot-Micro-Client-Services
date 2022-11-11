//
//  MainPage.swift
//  Big Robot Micro Client Services
//
//  Created by Stephen Johnson on 11/10/22.
//

import SwiftUI

struct MainPage: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Samples")
                    .font(.custom("Arial", size: 36.0))
                    .fontWeight(.bold)
                    .padding(EdgeInsets(top: 30, leading: 0, bottom: 10, trailing: 0))
                             
                Spacer(minLength: 100)
                    List {
                        NavigationLink(destination: SettingsPage()) {
                            Text("Set")
                        }
                        NavigationLink(destination: BLEPage()) {
                            Text("Bluetooth")
                        }
                        NavigationLink(destination: GraphDemosView()) {
                            Text("Graphs")
                        }

                    }
                    .frame(maxHeight: 300)
//                    .background(.gray)

                
            }.background(Color.init(red: 0.5, green: 0.5, blue: 1.0))
//            .edgesIgnoringSafeArea(.all)

        }
        .navigationTitle("Home")
        .navigationBarTitleDisplayMode(.large)
    }
}

struct MainPage_Previews: PreviewProvider {
    static var previews: some View {
        MainPage()
    }
}
