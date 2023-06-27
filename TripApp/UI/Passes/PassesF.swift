//  /*
//
//  Project: TripApp
//  File: PassesF.swift
//  Created by: Elaidzha Shchukin
//  Date: 26.06.2023
//
//  S
//
//  */

import SwiftUI

struct PassesF: View {
    
    @State private var passesF: String = ""

    var body: some View {
        
        VStack {
            HStack {
                Text("Добавление перевала")
                    .font(.custom("Inter-Bold", size: 20))
                    .foregroundColor(Color(toText: .mainblack))
                    .padding()
            }
            
            Divider()
                .frame(height: 1)
                .background(Color.black)
            
            VStack {
                Group {
                    FloatingLabelTextField(placeholder: "Название перевала", text: self.$passesF)
                    
                }
            }
            .padding()
            
            HStack {
                
              Text("Категория перевала")
                    .font(.custom("Inter-Regular", size: 20))

                Spacer()
                ZStack {
                    Circle()
                    
                    Image("icon-iletter")
                }
                .frame(width: 20, height: 25)
                .foregroundColor(Color(toElement: .mainblue))
            }
            .padding()
            
            Spacer()
            
        }
    }
}

struct PassesF_Previews: PreviewProvider {
    static var previews: some View {
        self.devices {
            PassesF()
        }
    }
}
