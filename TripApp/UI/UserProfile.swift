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
    
    @State var textFieldText: String = ""
    @State var nameFieldText: String = ""
    @State var famNameFieldText: String = ""
    @State var mailFieldText: String = ""
    @State var telFieldText: String = ""
    @State var netFieldText: String = ""

    var body: some View {
        
        ScrollView {
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
                
                VStack(alignment: .leading, spacing: 10) {
                    
                    TextField("", text: $textFieldText)
                        .textFieldStyle(.roundedBorder)
                        .border(Color(toText: .greytext))
                        .font(.custom("Inter-Regular", size: 15))
                        .foregroundColor(Color(toText: .textfieldgrey))
                    
                    Text("Фамилия")
                        .font(.custom("Inter-Regular", size: 9))
                    
                    TextField("", text: $nameFieldText)
                        .textFieldStyle(.roundedBorder)
                        .border(Color(toText: .greytext))
                        .font(.custom("Inter-Regular", size: 15))
                        .foregroundColor(Color(toText: .textfieldgrey))
                    
                    Text("Фамилия")
                        .font(.custom("Inter-Regular", size: 9))

                    
                    TextField("", text: $famNameFieldText)
                        .textFieldStyle(.roundedBorder)
                        .border(Color(toText: .greytext))
                        .font(.custom("Inter-Regular", size: 15))
                        .foregroundColor(Color(toText: .textfieldgrey))
                    
                    Text("Фамилия")
                        .font(.custom("Inter-Regular", size: 9))

                    
                    TextField("", text: $mailFieldText)
                        .textFieldStyle(.roundedBorder)
                        .border(Color(toText: .greytext))
                        .font(.custom("Inter-Regular", size: 15))
                        .foregroundColor(Color(toText: .textfieldgrey))
                    
                    Text("Фамилия")
                        .font(.custom("Inter-Regular", size: 9))

                    
                    TextField("", text: $telFieldText)
                        .textFieldStyle(.roundedBorder)
                        .border(Color(toText: .greytext))
                        .font(.custom("Inter-Regular", size: 15))
                        .foregroundColor(Color(toText: .textfieldgrey))
                    
                    Text("Фамилия")
                        .font(.custom("Inter-Regular", size: 9))

                    
//                    TextField("", text: $netFieldText)
//                        .textFieldStyle(.roundedBorder)
//                        .border(Color(toText: .greytext))
//                        .font(.custom("Inter-Regular", size: 15))
//                        .foregroundColor(Color(toText: .textfieldgrey))
//
//                    //Text("Фамилия")
//                       // .font(.custom("Inter-Regular", size: 9))

                    
                }
                .padding()
                
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
}

struct UserProfile_Previews: PreviewProvider {
    static var previews: some View {
        self.devices {
            UserProfile()
        }
    }
}
