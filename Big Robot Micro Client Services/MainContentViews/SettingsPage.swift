//
//  SettingsPage.swift
//  Big Robot Micro Client Services
//
//  Created by Stephen Johnson on 11/10/22.
//

import SwiftUI

struct SettingsPage: View {
    @AppStorage("onboarding")
    private var showOnboarding: Bool = false

    //work this to use onAppear and show on startup, that way it happens only in appstart.
    //may need to remove wrapping and access storage directly in a #if
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Spacer()
                Toggle(isOn: $showOnboarding) {
                    Text("Show Onboard Instructions")
                }
            }
            .frame(minHeight: 0, maxHeight: 44)
            .background(Color.init(red: 0.65, green: 0.65, blue: 0.65))
            .cornerRadius(10)
            .padding(EdgeInsets(top: 20, leading: 10, bottom: 20, trailing: 10))

            Spacer()
        }
        .navigationTitle("App Settings")
    }
}

struct SettingsPage_Previews: PreviewProvider {
    static var previews: some View {
        SettingsPage()
    }
}
