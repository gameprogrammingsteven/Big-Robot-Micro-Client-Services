//
//  BLEPage.swift
//  Big Robot Micro Client Services
//
//  Created by Stephen Johnson on 11/10/22.
//

import SwiftUI

struct BLEPage: View {
    var body: some View {
        VStack {
            Text("Devices Nearby")
                .foregroundColor(.white)
                .font(.title)
                .fontWeight(.bold)
                .padding(10)
                .background(Color.init(red: 0, green: 0.5, blue: 0, opacity: 0.2))
                .cornerRadius(3)
            Spacer()
        }
        .frame(maxWidth: UIScreen.main.bounds.width)
        .background(Color.init(red: 0.4, green: 0.8, blue: 0.9))

    }
}

struct BLEPage_Previews: PreviewProvider {
    static var previews: some View {
        BLEPage()
    }
}
