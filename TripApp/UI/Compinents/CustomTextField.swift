//  /*
//
//  Project: TripApp
//  File: CustomTextField.swift
//  Created by: Elaidzha Shchukin
//  Date: 20.06.2023
//
//  S
//
//  */

import SwiftUI

struct CustomTextField: View {
    
    @State var textFieldText: String = ""
    @State var dataArray: [String] = []
    
    var body: some View {
        
        TextField("", text: $textFieldText)
            .textFieldStyle(.roundedBorder)
            .border(Color(toText: .greytext))
            .font(.custom("Inter-Regular", size: 15))
            .foregroundColor(Color(toText: .textfieldgrey))
            .padding()
        
    }
}

struct CustomTextField_Previews: PreviewProvider {
    static var previews: some View {
        self.devices {
            CustomTextField()
        }
    }
}
