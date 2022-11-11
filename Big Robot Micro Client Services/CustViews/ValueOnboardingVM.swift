//
//  ValueOnboardingVM.swift
//  Big Robot Micro Client Services
//
//  Created by Stephen Johnson on 11/10/22.
//

import Foundation
import SwiftUI

class ValueOnboardingVMList: ObservableObject {
    @Published var list: [ValueOnboardingVM] = ValueOnboardingVMList.getAll()
}

extension ValueOnboardingVMList {
    static func getAll() -> [ValueOnboardingVM] {
        return [
            ValueOnboardingVM(title: "Add value to your business with an app."
                              , subHeader: "Add an onboard screen like this one."
                              , imageName: ""),
            ValueOnboardingVM(title: "Show your customers how to use your app with this: Onboarding",
                              subHeader: "Add an onboard screen like this one.",
                              imageName: ""),
            ValueOnboardingVM(title: "Show your customers how to use your app with this: Onboarding",
                              subHeader: "Add an onboard screen like this one.",
                              imageName: "",
                             showsNextButton: false)
        ]

    }
}
class ValueOnboardingVM: Identifiable {
    
    var id = UUID()
    var title: String = ""
    var subHeader: String = ""
    var imageName: String = ""
    var showsNextButton: Bool = true
    
    init(title: String, subHeader: String = "", imageName: String = "", showsNextButton: Bool = true) {
        self.title = title
        self.subHeader = subHeader
        self.imageName = imageName
        self.showsNextButton = showsNextButton
//        self.onboardingIndex = onboardingIndex
    }
}
