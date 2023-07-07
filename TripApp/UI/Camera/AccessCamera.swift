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

//#if DEBUG
struct AccessCamera_Previews: PreviewProvider {
    static var previews: some View {
        self.devices {
            AccessCamera()
        }
    }
}
//#endif

struct CameraView: View {
    
    @StateObject var camera = CameraModel()
    
    var body: some View {
        
        // Camera preview...
        ZStack {
            
            CameraPreview(camera: camera)
                .ignoresSafeArea(.all, edges: .all)
            
            VStack {
                
                if camera.isTaken {
                    
                    HStack {
                        Button(action: camera.reTake, label: {
                            
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
                        
                        Button(action: {if !camera.isSaved{camera.savePic()}}, label: {
                            Text(camera.isSaved ? "Saved" : "Save")
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
                        
                        Button(action: camera.takePic,
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
        .onAppear(perform: {
            
            camera.Check()
        })
    }
}

// Camera Model...

class CameraModel: NSObject, ObservableObject, AVCapturePhotoCaptureDelegate {
    
    @Published var isTaken = false
    
    @Published var session = AVCaptureSession()
    
    @Published var alert = false
    
    // Since gonna read pics data...
    @Published var output = AVCapturePhotoOutput()
    
    // Preview...
    @Published var preveiw: AVCaptureVideoPreviewLayer!
    
    // Pic Data...
    
    @Published var isSaved = false
    
    @Published var picData = Data()
    
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
    
    // Take and retake funcs...
    
    func takePic() {
        
        DispatchQueue.global(qos: .background).async {
            
            self.output.capturePhoto(with: AVCapturePhotoSettings(), delegate: self)
            self.session.stopRunning()
            
            DispatchQueue.main.async {
                
                withAnimation{self.isTaken.toggle()}
            }
        }
    }
    
    func reTake() {
        
        DispatchQueue.global(qos: .background).async {
            
            self.session.startRunning()
            
            DispatchQueue.main.async {
                withAnimation{self.isTaken.toggle()}
                
                // Clearing...
                self.isSaved = false
            }
        }
    }
    
    func photoOutput(_ output: AVCapturePhotoOutput, didFinishProcessingPhoto photo: AVCapturePhoto, error: Error?) {
        
        if error != nil {
            return
        }
        
        print("pic taken...")
        
        guard let imageData = photo.fileDataRepresentation() else {return}
        
        self.picData = imageData
    }
    
    func savePic() {
        
        let image = UIImage(data: self.picData)!
        
        // Saving Image...
        
        UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil)
        
        self.isSaved = true
        
        print("saved Successfully...")
    }
}

// Setting view for preview...

struct CameraPreview: UIViewRepresentable {
     
    @ObservedObject var camera: CameraModel
    
    func makeUIView(context: Context) -> UIView {
        
        let view = UIView(frame: UIScreen.main.bounds)
        
        camera.preveiw = AVCaptureVideoPreviewLayer(session: camera.session)
        camera.preveiw.frame = view.frame
        
        // Own properties...
        camera.preveiw.videoGravity = .resizeAspectFill
        view.layer.addSublayer(camera.preveiw)
        
        // Start session
        camera.session.startRunning()
        
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
        
    }
}
