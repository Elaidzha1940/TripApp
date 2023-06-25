//  /*
//
//  Project: TripApp
//  File: TabMenuPlus.swift
//  Created by: Elaidzha Shchukin
//  Date: 25.06.2023
//
//  S
//
//  */


import SwiftUI

struct TabMenuPlus: View {
    
    @State var index = 0
    
    var body: some View {
        
        VStack {
            Spacer()
            CustomTab(index: self.$index)
        }
        .background(Color.white)
        .edgesIgnoringSafeArea(.top)
    }
}

struct TabMenuPlus_Previews: PreviewProvider {
    static var previews: some View {
        self.devices {
            TabMenuPlus()
        }
    }
}

struct CustomTab : View {
    
    @Binding var index : Int
    
    var body: some View {
        
        HStack(spacing: 50) {
            
            Button(action: {
                
                self.index = 0
                
            }) {
                Image("system-burger")
            }
            .foregroundColor(Color(toElement: .mainblack).opacity(self.index == 0 ? 1 : 0.2))
            
            Spacer(minLength: 0)
            
            ZStack {
                Circle()
                Button(action: {
                    
                }) {
                    
                    Image("icon-whiteplus").renderingMode(.original)
                }
            }
            .frame(width: 45, height: 45)
            .foregroundColor(Color(toElement: .mainblue))
            .offset(y: -20)
            
            Spacer(minLength: 0)
            
            
            Button(action: {
                
                self.index = 1
                
            }) {
                Image("system-search")
            }
            .foregroundColor(Color(toElement: .mainblack).opacity(self.index == 1 ? 1 : 0.2))
            
            Spacer(minLength: 0)
            
        }
        .padding(.leading, 60)
        .padding(.top, 35)
        .background(Color(toElement: .maingrey))
        .clipShape(CShape())
    }
}

struct CShape : Shape {
    func path(in rect: CGRect) -> Path {
        
        return Path { path in
           
            path.move(to:  CGPoint(x: 0, y: 35))
            path.addLine(to: CGPoint(x: 0, y: rect.width))
            path.addLine(to: CGPoint(x: rect.width, y: rect.width))
            path.addLine(to: CGPoint(x: rect.width, y: 35))
            
            path.addArc(center: CGPoint(x: (rect.width / 2) - 4, y: 35), radius: 35, startAngle: .zero, endAngle: .init(degrees: 180), clockwise: false)
        }
    }
}

