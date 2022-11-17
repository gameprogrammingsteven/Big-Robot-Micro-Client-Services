//
//  MainPage.swift
//  Big Robot Micro Client Services
//
//  Created by Stephen Johnson on 11/10/22.
//

import SwiftUI
import ARKit

struct MainPage: View {
    @State var bobbing: Bool = false
    
    let mainURL = URL(string:"https://bigrobotmicro.com")!
    
    @AppStorage("onboarding")
    private var showOnboarding: Bool = false
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    Text("Samples")
                        .foregroundColor(.white)
                        .font(.custom("Arial", size: 36.0))
                        .fontWeight(.bold)
                        .shadow(color: .black, radius: 3, x: 4, y: 2)
                        .padding(EdgeInsets(top: 30, leading: 0, bottom: 10, trailing: 0))
                    
                    Spacer(minLength: 50)
                    
                    Image("desk")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(20)
                        .shadow(radius: 15)
                        .padding(33)
                        .offset(y: bobbing ? 4 : 0)
                        .animation(Animation.easeInOut(duration:3.0), value: bobbing)
//                        .onAppear() {
//                            withAnimation(Animation.easeInOut(duration: 3.0).repeatForever()){
//                                self.bobbing.toggle()
//                            }
//                        }
                    
                    
                    Spacer(minLength: 50)
                    
                    ScrollView {
                        NavigationLink(destination: WeatherMockView()) {
                            HStack(alignment: .center) {
                                
                                
                                Text("Sample Chart")
                                    .foregroundColor(Color.black)
                                    .fontWeight(.heavy)
                                    .padding()
                                Spacer()
                                Image(systemName:"chevron.compact.right").foregroundColor(.white).scaleEffect(1.6)
                                    .padding()
                            }
                        }
                        .frame(minHeight: 32)
                        HStack(alignment: .center) {
                            Text("Website")
                                .fontWeight(.heavy)
                                .padding()
                            Spacer()
                            Image(systemName:"chevron.compact.right").padding().foregroundColor(.white).scaleEffect(1.6)
                            
                        }
                        .onTapGesture {
                            print("t")
                            openSite(mainURL)
                        }
                        .frame(minHeight: 32)
                        
                        
                        HStack(alignment: .center) {
                            Text("Onboarding Again")
                                .fontWeight(.heavy)
                                .padding()
                                .onTapGesture {
                                    restartOnboard()
                                }
                            
                            Spacer()
                            Image(systemName:"chevron.compact.right").padding().foregroundColor(.white).scaleEffect(1.6)
                        }
                        .frame(minHeight: 32)
                    }
                    .background(Color.init(white: 1 , opacity: 0.3))
                    .cornerRadius(5)
                    .frame(maxHeight: 180)
                    .padding(EdgeInsets(top: 0, leading: 30, bottom: 0, trailing: 30))
                    
                    Spacer()
                   
                } //Main VStack
                .frame(height:UIScreen.main.bounds.height)
//                Spacer()
                
                
//                .frame(maxHeight: UIScreen.main.bounds.height)
            .background(Color.init(red: 0.5, green: 0.5, blue: 1.0))
            } //ScrollView
//            .frame(height: UIScreen.main.bounds.height)
//            .edgesIgnoringSafeArea(.all)
            
        }//NavigationView
        .edgesIgnoringSafeArea(.all)
        .navigationTitle("Home")
        .navigationBarTitleDisplayMode(.large)
    }
    
    func openSite(_ url: URL) {
        if UIApplication.shared.canOpenURL(url) { UIApplication.shared.open(url)
        }
    }
    
    func restartOnboard() {
        showOnboarding = true
    }
    
}

struct MainPage_Previews: PreviewProvider {
    static var previews: some View {
        MainPage()
    }
}
