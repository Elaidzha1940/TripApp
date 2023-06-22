//  /*
//
//  Project: TripApp
//  File: PassList.swift
//  Created by: Elaidzha Shchukin
//  Date: 22.06.2023
//
//  Status: #In progress | #Not decorated
//
//  */

import SwiftUI

struct PassList: View {
    var body: some View {
        
        VStack {
            
            HStack {
                Text("Лоханкин Васисуалий")
                    .font(.custom("Inter-Regular", size: 24))
                    //.fontWeight(.thin)
                    .foregroundColor(Color(toText: .mainblack))
                    .padding(.horizontal, 20)
                    .padding()
                Button {
                    //ation
                } label: {
                    Image("system-right")
                }
            }
            .padding(.leading, 35)

            Divider()
                .frame(height: 1)
                .background(Color.black)
            
            Rectangle()
                .frame(width: 380, height: 370)
                .foregroundColor(.black.opacity(0.2))
            
            Text("Нажмите на + чтобы добавить перевал")
                .frame(width: 250)
                .font(.custom("Inter-Regular", size: 24))
                .foregroundColor(Color(toText: .mainblack))
                .multilineTextAlignment(.center)
                .padding()
            
            Button {
                //action
            } label: {
                Text("Посмотреть базу перевалов")
                    .font(.custom("Inter-Medium", size: 16))
                    .underline()
                    .foregroundColor(Color(toText: .mainblue))
                    .multilineTextAlignment(.center)
                
            }
            .padding()
        }
    }
}

struct PassList_Previews: PreviewProvider {
    static var previews: some View {
        self.devices {
            PassList()
        }
    }
}
