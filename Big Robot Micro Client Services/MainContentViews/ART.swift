//
//  ART.swift
//  Big Robot Micro Client Services
//
//  Created by Stephen Johnson on 11/11/22.
//

import SwiftUI
import RealityKit

struct ART : View {
    var body: some View {
        ARViewContainer().edgesIgnoringSafeArea(.all)
    }
}

struct ARViewContainer: UIViewRepresentable {
    
    func makeUIView(context: Context) -> ARView {
        
        let arView = ARView(frame: .zero)
        
        // Load the "Box" scene from the "Experience" Reality File
        let boxAnchor = try! Experience.loadBox()
        
        // Add the box anchor to the scene
        arView.scene.anchors.append(boxAnchor)
        
        return arView
        
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}
    
}

#if DEBUG
struct ART_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
