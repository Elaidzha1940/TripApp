//  /*
//
//  Project: TripApp
//  File: FloatingBorderLabelTextField.swift
//  Created by: Elaidzha Shchukin
//  Date: 27.06.2023
//
//  Status: #In progress | #Decorated
//
//  */

import SwiftUI

struct FloatingBorderLabelTextField: View {
    let placeholder: String
    @Binding var text: String
    
    var body: some View {
        ZStack (alignment: .leading) {
            Text(placeholder)
                .font(.custom(Fonts.Inter.regular, size: 16))
                //.font(.system(self.text.isEmpty ? .title2 : .title3, design: .rounded))
                .foregroundColor(.black.opacity(0.5))
                .padding(.horizontal, self.text.isEmpty ? 0 : 10)
                .background(Color.white)
                .offset(y: self.text.isEmpty ? 0 : -28)
                .scaleEffect(self.text.isEmpty ? 1 : 0.9, anchor: .leading)
            
            TextField("", text: self.$text)
                .font(.custom(Fonts.Inter.regular, size: 16))
                //.font(.system(.title2, design: .rounded))
                .foregroundColor(.black)
        }
        .animation(.easeOut, value: !text.isEmpty)
        .padding(.horizontal)
        .padding(.vertical, 10)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .stroke(self.text.isEmpty ? .black.opacity(0.5) : .black, lineWidth: 2)
        )
    }
}

struct FloatingBorderLabelTextField_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            FloatingBorderLabelTextField(placeholder: "", text: .constant(""))
            
        }
        .font(.custom(Fonts.Inter.regular, size: 16))
        //.previewLayout(.sizeThatFits)
        .padding()
    }
}
