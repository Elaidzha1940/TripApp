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
        
        // Camera preview...
        ZStack {
            
            Color.black
                .ignoresSafeArea(.all, edges: .all)
            
            VStack {
                
                Spacer()
                
                HStack {
                    
                   // If taken showing save and again takr button...
                    
                    if camera .isTaken {
                        
                        Button(action: {}, label: {
                            Text("Save")
                                .font(.custom(Fonts.Inter.regular, size: 18))
                                .foregroundColor(Color(toText: .mainblack))
                                .padding(.vertical, 10)
                                .padding(.horizontal, 20)
                                .background(Color.white)
                                .clipShape(Capsule())
                            
                        })
                        .padding(.leading)
                         
                        Spacer()
                        
                    } else {
                        
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
}

// Camera Model...

class CameraModel: ObservableObject {
    
    @Published var isTaken = false
}

