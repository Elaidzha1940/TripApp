//  /*
//
//  Project: TripApp
//  File: UserProfile.swift
//  Created by: Elaidzha Shchukin
//  Date: 19.06.2023
//
//  Status: #In progress | #Not decorated
//
//  */

import SwiftUI

struct UserProfile: View {
    var body: some View {
        
        VStack {
            
            Text("Добро пожаловать")
                .font(.custom("Inter-Medium", size: 20))
                .fontWeight(.thin)
                .foregroundColor(Color(toText: .mainblack))
            
            Divider()
                .frame(height: 1)
                .background(Color.black)
            
            Text("Давайте знакомиться")
                .font(.custom("Inter-Regular", size: 28))
                .foregroundColor(Color(toText: .mainblue))
            
            VStack(alignment: .leading, spacing: 10) {
                
                Text("Запишем вас:")
                    .padding(.horizontal, -15)
                
                Text(" - в список помогавших наполнять базу перевалов")
                Text(" - в качестве первопроходителей перевала, если он новый")
                Text(" - в базу туристов ФСТР")
            }
            .font(.custom("Inter-Medium", size: 18))
            .foregroundColor(Color(toText: .blacktext))
            .frame(width: 290)
            .padding()
            
            Rectangle()
                .frame(width: 300, height: 30)
                .foregroundColor(Color(toElement: .mainblue))
            Rectangle()
                .frame(width: 300, height: 30)
                .foregroundColor(Color(toElement: .mainblue))
            Rectangle()
                .frame(width: 300, height: 30)
                .foregroundColor(Color(toElement: .mainblue))
           
       
            
            Button {
                //action
            } label: {
                Text("Войти")
                    .font(.custom("Inter-Medium", size: 20))
                    .foregroundColor(Color(toText: .mainblack))
                    .frame(width: 340, height: 50)
                    .background(Color(toElement: .buttoncolor))
                    .cornerRadius(60)
                    .padding()
            }
            
            Text("Используя приложение, вы даете согласие ФСТР на")
                .font(.custom("Inter-Medium", size: 10))
                .foregroundColor(Color(toText: .mainblack))

            Button {
                //action
            } label: {
                Text("на обработку персональный данных")
                    .font(.custom("Inter-Medium", size: 12))
                    .underline()
                    .foregroundColor(Color(toText: .mainblue))
                    .multilineTextAlignment(.center)

            }
        }
    }
}

struct UserProfile_Previews: PreviewProvider {
    static var previews: some View {
        self.devices {
            UserProfile()
        }
    }
}
