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
                Text("Hi")
                Spacer()
                List {
                    
                }
            }
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
