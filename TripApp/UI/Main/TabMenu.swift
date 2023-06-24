//  /*
//
//  Project: TripApp
//  File: TabMenu.swift
//  Created by: Elaidzha Shchukin
//  Date: 20.06.2023
//
//  S
//
//  */

import SwiftUI

struct TabMenu: View {
    
    @State var index = 0
    
    var body: some View {
        
        VStack {
            Spacer()
            CustomTabs(index: self.$index)
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct TabMenu_Previews: PreviewProvider {
    static var previews: some View {
        self.devices {
            TabMenu()
        }
    }
}

struct CustomTabs : View {
    
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
        .background(Color(toElement: .maingrey))
    }
}

struct CustomShape : Shape {
    func path(in rect: CGRect) -> Path {
        
        return Path { path in
           
            path.move(to:  CGPoint(x: 0, y: 0))
            path.addLine(to: CGPoint(x: 0, y: rect.height))
            path.addLine(to: CGPoint(x: rect.width, y: rect.height))
            path.addLine(to: CGPoint(x: rect.height, y: 0))
            
            
        }
    }
}
