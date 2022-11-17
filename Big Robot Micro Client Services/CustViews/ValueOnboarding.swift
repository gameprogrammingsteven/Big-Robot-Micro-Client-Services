//
//  ValueOnboarding.swift
//  Big Robot Micro Client Services
//
//  Created by Stephen Johnson on 11/10/22.
//

import SwiftUI

struct ValueOnboarding: View, Identifiable {
    
    @AppStorage("onboarding")
    private var showOnboarding: Bool = true

    var id = UUID()
    
//    var nextTapped: () -> ()
    @State var valueOnboardingVM: ValueOnboardingVM

    var body: some View {
        VStack {
            Spacer()
            Text("Welcome")
                .font(.custom("Arial", size: 48))
            //                .foregroundColor(Color.init(red: 150.0/255.0, green: 150.0/255.0, blue: 150.0/255.0))
                .foregroundColor(Color.init(red: 0.23, green: 0.23, blue: 0.23))
            
                .fontWeight(.bold)
//                .padding(EdgeInsets(top: 15, leading: 0, bottom: 0, trailing: 15))
            
            Spacer()
            Text(valueOnboardingVM.title)
                .fontWeight(.bold)
                .frame(width:UIScreen.main.bounds.width - 20)
                .font(.title)
                .fixedSize(horizontal: true, vertical: false)
                .lineLimit(4)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .padding(EdgeInsets(top: 0, leading: 8, bottom: 2, trailing: 4))
                .shadow(radius: 2, x:4, y:4)

            
            (valueOnboardingVM.subHeader.isEmpty ? nil :
                Text(valueOnboardingVM.subHeader)
                .font(.title3)
                .fontWeight(.semibold)
                .lineLimit(4)
                .frame(width:UIScreen.main.bounds.width - 20)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .padding(EdgeInsets(top: 20, leading: 16, bottom: 16, trailing: 16))
                .frame(width:UIScreen.main.bounds.width)
            )// if statement
            
//            Spacer()
            (valueOnboardingVM.imageName.isEmpty ? nil :
                Image(valueOnboardingVM.imageName)
                .resizable()
                .frame(width: 180, height: 180)
                .aspectRatio(contentMode: .fit)
                .padding(EdgeInsets(top: 10, leading: 33, bottom: 20, trailing: 33))
                )
//            Spacer()
            
            VStack {
                if(valueOnboardingVM.showsNextButton == true) {
                    ZStack {
                        Capsule(style: .circular)
                            .frame(width: 230, height: 55)
                            .background(.clear)
                            .foregroundColor(Color.init(red: 1.0, green: 0.88, blue: 0.9))
                            .buttonBorderShape(.capsule)
                        Capsule(style: .circular)
                            .frame(width: 222, height: 47)
                            .background(.clear)
                            .foregroundColor(Color.init(red: 0.05, green: 0.05, blue: 0.05))
                            .clipped()
                            .buttonBorderShape(.capsule)
                            .overlay(alignment: .center) {
                                HStack {
                                    Text("Next")
                                        .font(.title3).fontWeight(.bold)
                                        .foregroundColor(Color.init(red: 1.0, green: 0.88, blue: 0.9))
                                    
                                    Image(systemName: "arrowshape.right")
                                        .foregroundColor(.white)
                                }
                                .foregroundColor(.gray)
                                
                            }
                        
                    }
                }
                
                ZStack {
                    Capsule(style: .circular)
                        .frame(width: 230, height: 55)
                        .background(.clear)
                        .foregroundColor(Color.init(red: 0.88, green: 0.33, blue: 0.33))
                        .buttonBorderShape(.capsule)
                    Capsule(style: .circular)
                        .frame(width: 222, height: 47)
                        .background(.clear)
                        .foregroundColor(Color.init(red: 0.05, green: 0.05, blue: 0.05))
                        .clipped()
                        .buttonBorderShape(.capsule)
                        .overlay(alignment: .center) {
                            HStack {
                                Text("SKIP")
                                    .font(.title3)
                                    .fontWeight(.bold)

                                    .foregroundColor(.red)
                                //                                Image(systemName: "arrowshape.right")
                            }
                            .foregroundColor(.gray)
                        }
                    
                }
                .padding()
                .onTapGesture {
                    //Implement and try
                    self.showOnboarding = false
                }
                
            }
            .padding()
        }
        .padding()
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height - 20)
        .background(.linearGradient(colors: [Color("PrimaryBG"), Color.init(red: 0.0, green: 0, blue: 0.87)], startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
    }
}

struct ValueOnboarding_Previews: PreviewProvider {
    //    @State var tempVM: ValueOnboardingVM =
//    @State static var index: Int = 0

    static var previews: some View {

        ValueOnboarding(valueOnboardingVM: ValueOnboardingVM(title: "Add value to your business with an app.",
                                                                             subHeader: "Add an onboard screen like this one. Test sentence and a two."
                                                                             ,imageName: "app2_2048",
                                                                             showsNextButton: false
                                                                            ) )
    }
}
