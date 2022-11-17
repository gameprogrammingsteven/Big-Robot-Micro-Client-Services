//
//  OnboarderContainerView.swift
//  Big Robot Micro Client Services
//
//  Created by Stephen Johnson on 11/10/22.
//

import SwiftUI

struct OnboarderContainerView: View {
//    @State var tabIndex: String //It's a string!!!
    //"Show your customers how to use your app with this: Onboarding"
//    private var items: FetchedResults<Item>?

    @ObservedObject var valueVMs = ValueOnboardingVMList()

    var body: some View {
        VStack {
            TabView() {
                ForEach(self.valueVMs.list) { valueVM  in
                    ValueOnboarding( valueOnboardingVM: valueVM)
                        .tag("\(valueVM.title)") //add tabindex.

                }
//                ValueOnboarding(nextTapped: onboardNextTapped)
//                ValueOnboarding(nextTapped: onboardNextTapped)
            }
            .tabViewStyle(.page(indexDisplayMode: .automatic))
//            .edgesIgnoringSafeArea(.all)
//            .background(.clear)
            
            
        }
        .edgesIgnoringSafeArea(.all)
//        .onAppear(perform: {
//               self.valueVMs.list = ValueOnboardingVMList.getAll()
//           })
        
    }
}

struct OnboarderContainerView_Previews: PreviewProvider {
    static var previews: some View {
        OnboarderContainerView()
    }
}
