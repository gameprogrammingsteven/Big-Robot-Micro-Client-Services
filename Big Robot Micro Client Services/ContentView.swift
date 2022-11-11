//
//  ContentView.swift
//  Big Robot Micro Client Services
//
//  Created by Stephen Johnson on 11/10/22.
//

import SwiftUI
import CoreData

struct ContentView: View {
//    @Environment(\.managedObjectContext) private var viewContext

    @AppStorage("onboarding")
    private var showOnboarding: Bool = true
    
    var body: some View {
        VStack {
            if self.showOnboarding {
                OnboarderContainerView()
            }
            else {
                MainPage()
            }
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
