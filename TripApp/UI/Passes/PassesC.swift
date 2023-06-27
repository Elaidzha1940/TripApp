//  /*
//
//  Project: TripApp
//  File: PassesC.swift
//  Created by: Elaidzha Shchukin
//  Date: 26.06.2023
//
//  S
//
//  */

import SwiftUI

struct PassesC: View {
    
    @State private var firstName: String = ""
    
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
            
            Spacer()
            
            VStack {
                Group {
                    FloatingLabelTextField(placeholder: "Название перевала", text: self.$firstName)
                    
                }
            }
            .padding()
            Spacer()
        }
    }
}

struct PassesC_Previews: PreviewProvider {
    static var previews: some View {
        self.devices {
            PassesC()
        }
    }
}
