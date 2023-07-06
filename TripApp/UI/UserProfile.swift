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
    
    @State var surnameFieldText: String = ""
    @State var nameFieldText: String = ""
    @State var famNameFieldText: String = ""
    @State var mailFieldText: String = ""
    @State var telFieldText: String = ""
    @State var netFieldText: String = ""
    
    var body: some View {
        
        VStack {
            
            VStack {
                Text("Добро пожаловать")
                    .font(.custom(Fonts.Inter.medium, size: 20))
                    .fontWeight(.thin)
                    .foregroundColor(Color(toText: .mainblack))
                
                Divider()
                    .frame(height: 1)
                    .background(Color.black)
                
                // ScrollView {
                
                Text("Давайте знакомиться")
                    .font(.custom(Fonts.Inter.regular, size: 28))
                    .foregroundColor(Color(toText: .mainblue))
            }
            
            VStack(alignment: .leading, spacing: 10) {
                
                Text("Запишем вас:")
                    .padding(.horizontal, -15)
                
                Text(" - в список помогавших наполнять базу перевалов")
                Text(" - в качестве первопроходителей перевала, если он новый")
                Text(" - в базу туристов ФСТР")
            }
            .font(.custom(Fonts.Inter.medium, size: 18))
            .foregroundColor(Color(toText: .blacktext))
            .frame(width: 290)
            .padding()
            
            VStack(alignment: .leading, spacing: 10) {
                
                TextField("", text: $surnameFieldText)
                    .textFieldStyle(.roundedBorder)
                    .border(Color(toText: .greytext))
                    .font(.custom(Fonts.Inter.regular, size: 15))
                    .foregroundColor(Color(toText: .textfieldgrey))
                
                Text("Фамилия")
                    .font(.custom(Fonts.Inter.regular, size: 9))
                    .foregroundColor(Color(toText: .greytext))
                
                TextField("", text: $nameFieldText)
                    .textFieldStyle(.roundedBorder)
                    .border(Color(toText: .greytext))
                    .font(.custom(Fonts.Inter.regular, size: 15))
                    .foregroundColor(Color(toText: .textfieldgrey))
                
                Text("Имя")
                    .font(.custom(Fonts.Inter.regular, size: 9))
                    .foregroundColor(Color(toText: .greytext))
                
                TextField("yourmail.com", text: $mailFieldText)
                    .textFieldStyle(.roundedBorder)
                    .border(Color(toText: .greytext))
                    .font(.custom(Fonts.Inter.regular, size: 15))
                    .foregroundColor(Color(toText: .textfieldgrey))
                
                Text("E-mail будет логином и основным средством связи с вами")
                    .font(.custom(Fonts.Inter.regular, size: 9))
                    .foregroundColor(Color(toText: .greytext))
                
                TextField("+7_", text: $telFieldText)
                    .textFieldStyle(.roundedBorder)
                    .border(Color(toText: .greytext))
                    .font(.custom(Fonts.Inter.regular, size: 15))
                    .foregroundColor(Color(toText: .textfieldgrey))
                
                Text("По желанию")
                    .font(.custom(Fonts.Inter.regular, size: 9))
                    .foregroundColor(Color(toText: .greytext))
                
                
                
                TextField("ссылка на соцсети", text: $netFieldText)
                    .textFieldStyle(.roundedBorder)
                    .border(Color(toText: .greytext))
                    .font(.custom(Fonts.Inter.regular, size: 15))
                    .foregroundColor(Color(toText: .textfieldgrey))
                
                Text("Фамилия")
                    .font(.custom(Fonts.Inter.regular, size: 9))
                    .foregroundColor(Color(toText: .textfieldgrey))
                
                
                //                Button {
                //                    //action
                //                } label: {
                //                    Text("Войти")
                //                        .font(.custom("Inter-Medium", size: 20))
                //                        .foregroundColor(Color(toText: .mainblack))
                //                        .frame(width: 340, height: 50)
                //                        .background(Color(toElement: .buttoncolor))
                //                        .cornerRadius(60)
                //                        .padding()
                //                }
                
            }
            .padding()
            
            Text("Используя приложение, вы даете согласие ФСТР на")
                .font(.custom(Fonts.Inter.medium, size: 12))
                .foregroundColor(Color(toText: .mainblack))
            
            Button {
                //action
            } label: {
                Text("обработку персональный данных")
                    .font(.custom(Fonts.Inter.medium, size: 14))
                    .underline()
                    .foregroundColor(Color(toText: .mainblue))
                    .multilineTextAlignment(.center)
                
            }
                        
            VStack {
                TabMenuPlus()
                    .padding(.bottom, -10)
                
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
            .padding(.bottom, -35)
        }
    }
}

#if DEBUG
struct UserProfile_Previews: PreviewProvider {
    static var previews: some View {
        self.devices {
            UserProfile()
        }
    }
}
#endif
