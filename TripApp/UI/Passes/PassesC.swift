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
    
    @State var passesCat: String = ""
    
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
                
                TextField("Название перевала", text: $passesCat)
                    .textFieldStyle(.roundedBorder)
                    .frame(width: 350, height: 50)
                    .border(Color(toText: .blacktext))
                    .font(.custom("Inter-Regular", size: 15))
                    .cornerRadius(10)
                    //.foregroundColor(Color(toText: .textfieldgrey))
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
