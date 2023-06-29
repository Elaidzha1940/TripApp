//  /*
//
//  Project: TripApp
//  File: PassesFilled.swift
//  Created by: Elaidzha Shchukin
//  Date: 29.06.2023
//
//  S
//
//  */

import SwiftUI

struct PassesFilled: View {
    
    @State private var passesFilled: String = ""

    var body: some View {
        
        VStack {
            HStack {
                Text("Добавление перевала")
                    .font(.custom(Fonts.Inter.bold, size: 20))
                    .foregroundColor(Color(toText: .mainblack))
                    .padding()
            }
            
            Divider()
                .frame(height: 1)
                .background(Color.black)
            
            ScrollView {
                VStack {
                    Group {
                        FloatingLabelTextField(placeholder: "Название перевала", text: self.$passesFilled)
                        
                    }
                    .padding(.trailing)
                }
                .padding(.horizontal, 40)
                .padding(.bottom, 20)
                
                //
                HStack(spacing: 30) {
                    
                    Text("Категория перевала")
                        .font(.custom(Fonts.Inter.regular, size: 20))

                        Spacer()
                    
                    ZStack {
                        Circle()
                            .stroke()
                        Image("icon-iletterblue")
                    }
                    .frame(width: 20, height: 25)
                    .foregroundColor(Color(toElement: .mainblue))
                }
                .padding(5)
                .padding(.horizontal, 30)
            }
        }
    }
}

struct PassesFilled_Previews: PreviewProvider {
    static var previews: some View {
        self.devices {
            PassesFilled()
        }
    }
}
