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
            
            Link(destination: URL(string: "https://tssr.ru/main/structura/2720/")!, label: {
                Text("Посмотреть базу перевалов")
                    .font(.custom("Inter-Medium", size: 16))
                    .underline()
                    .foregroundColor(Color(toText: .mainblue))
                    .multilineTextAlignment(.center)
            })
            .padding()
            
            Spacer()
            
            
            
            HStack{
                ZStack {
                    Rectangle()
                        .frame(width: 430, height: 50)
                        .foregroundColor(Color(toElement: .maingrey))
                    
                    HStack(spacing: 40) {
                        Image("icon-polygon")
                            .padding(.horizontal, 30)
                        Image("icon-ellipse")
                            .padding(.horizontal, 30)
                        Image("icon-cube")
                            .padding(.horizontal, 30)
                        
                    }
                }
            }
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
