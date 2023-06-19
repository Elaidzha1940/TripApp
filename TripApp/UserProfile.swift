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
                Text(" - в список помогавших наполнять базу перевалов")
                Text(" - в качестве первопроходителей перевала, если он новый")
                Text(" - в базу туристов ФСТР")
            }
            .font(.custom("Inter-Medium", size: 16))
            .foregroundColor(Color(toText: .blacktext))
            .padding()
            
            Rectangle()
                .frame(width: 300, height: 30)
                .foregroundColor(Color(toElement: .mainblue))
        }
    }
}

struct UserProfile_Previews: PreviewProvider {
    static var previews: some View {
        UserProfile()
    }
}
