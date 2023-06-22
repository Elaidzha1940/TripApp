//  /*
//
//  Project: TripApp
//  File: CustomTextField.swift
//  Created by: Elaidzha Shchukin
//  Date: 20.06.2023
//
//  Status: #In progress | #Not decorated
//
//  */

import SwiftUI

struct CustomTextField: View {
    
    @State var textFieldText: String = ""
    @State var dataArray: [String] = []
    
    var body: some View {
        
        VStack {
            TextField("", text: $textFieldText)
                .textFieldStyle(.roundedBorder)
                .border(Color(toText: .greytext))
                .font(.custom("Inter-Regular", size: 15))
                .foregroundColor(Color(toText: .textfieldgrey))
                .padding()
            
            Button(action: {
                if textisApproopriate() {
                    saveText()
                }
            }, label: {
                Text("Войти".uppercased())
                //.font(.custom("Inter-Medium", size: 20))
                    .frame(maxWidth: .infinity)
                    .background(textisApproopriate() ? Color.black : Color.red)
                    .foregroundColor(Color(toText: .mainblack))
                    .cornerRadius(60)
                // .padding()
            })
            
            ForEach(dataArray, id: \.self) { data in
                Text(data)
            }
        }
        
        func textisApproopriate() -> Bool {
            //check text
            if textFieldText.count >= 3 {
                return true
            }
            return false
        }
        
        func saveText() {
            dataArray.append(textFieldText)
            textFieldText = ""
        }
        
    }
}

struct CustomTextField_Previews: PreviewProvider {
    static var previews: some View {
        self.devices {
            CustomTextField()
        }
    }
}
