//  /*
//
//  Project: TripApp
//  File: AccessCamera.swift
//  Created by: Elaidzha Shchukin
//  Date: 06.07.2023
//
//  */

import SwiftUI
import AVFoundation

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
                
                if camera.isTaken {
                    
                    HStack {
                        Button(action: {}, label: {
                            
                            Spacer()
                            
                            Image("system-photo")
                                .foregroundColor(.black)
                                .padding()
                                .background(Color.white)
                                .clipShape(Circle())

                            
                        })
                        .padding(.trailing, 10)
                    }
                }
                
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
    
    @Published var session = AVCaptureSession()
    
    @Published var alert = false
    
    // Since gonna read pics data...
    @Published var output = AVCapturePhotoOutput()
    
    func Check() {
        
        // First checking the camera...
        switch AVCaptureDevice.authorizationStatus(for: .video) {
           
        case .authorized:
            setUP()
            return
            // Setting Up Session
        case.notDetermined:
            // Retusting for the permission...
            AVCaptureDevice.requestAccess(for: .video) { (status) in
                
                if status {
                    self.setUP()
                }
            }
        case .denied:
            self.alert.toggle()
            return
        default:
            return
        }
    }
    
    func setUP() {
        
        // Setting up camera...
        
        do {
            
            // Setting  configs...
            self.session.beginConfiguration()
            
            // Change for your own...
            let device = AVCaptureDevice.default(.builtInDualCamera, for: .video, position: .back)
            
            let input = try AVCaptureDeviceInput(device: device!)
            
            // Checking and adding to session...
            
            if self.session.canAddInput(input) {
                self.session.addInput(input)
            }
        
            // Same for output...
            if session.canAddOutput(self.output) {
                self.session.addOutput(self.output)
            }
            
            self.session.commitConfiguration()
        }
        catch {
            print(error.localizedDescription)
        }
    }
}

