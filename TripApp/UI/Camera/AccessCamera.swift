//  /*
//
//  Project: TripApp
//  File: AccessCamera.swift
//  Created by: Elaidzha Shchukin
//  Date: 06.07.2023
//
//  */

import SwiftUI

struct AccessCamera: View {
    var body: some View {
        
        CameraView()
    }
}

#if DEBUG
struct AccessCamera_Previews: PreviewProvider {
    static var previews: some View {
        self.devices {
            AccessCamera()
        }
    }
}
#endif

struct CameraView: View {
    
    @StateObject var camera = CameraModel()
    
    var body: some View {
        
        //Camera preview...
        ZStack {
            
            Color.black
                .ignoresSafeArea(.all, edges: .all)
            
            VStack {
                
                Spacer()
                
                HStack {
                    Button(action: {camera.isTaken.toggle()},
                           label: {
                        Text("Camera")
                            .bold()
                            .font(.largeTitle)
                            .foregroundColor(.white)
                    })
                }
            }
        }
    }
}

//Camera Model...

class CameraModel: ObservableObject {
    
    @Published var isTaken = false
}

