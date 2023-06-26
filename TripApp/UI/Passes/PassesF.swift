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
