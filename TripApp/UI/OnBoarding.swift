//  /*
//
//  Project: TripApp
//  File: OnBoarding.swift
//  Created by: Elaidzha Shchukin
//  Date: 10.06.2023
//
//  Status: #In progress | #Not decorated
//
//  */

import SwiftUI

struct OnBoarding: View {
    var body: some View {
        
        VStack {
            ZStack {
                Color(toElement: .mainblue)
                VStack {
                    Spacer()
                    
                    Image("system-logo")
                        .frame(width: 161, height: 97)
                    
                    HStack {
                        
                        Text("#ПОХОДЫ #СВОБОДА #ПРЕОДОЛЕНИЕ #ОКРЫТИЯ")
                            .font(.custom("Inter-Medium", size: 20))
                            .foregroundColor(Color(toText: .main))
                            .frame(width: 363, height: 143)
                        
                    }
                    .multilineTextAlignment(.center)
                    .padding()
                    
                    Text("ОПИШИ ПЕРЕВАЛ")
                        .font(.custom("Inter-Medium", size: 36))
                        .foregroundColor(Color(toText: .main))
                        .padding()
                    
                    
                    Text("Наполняем каталог перевалов вместе")
                        .font(.custom("Inter-Medium", size: 16))
                        .foregroundColor(Color(toText: .main))
                        .padding()
                    
                    Button {
                        //action
                    } label: {
                        Text("Войти")
                            .font(.custom("Inter-Medium", size: 20))
                            .foregroundColor(Color(toText: .mainblack))
                            .frame(width: 340, height: 50)
                            .background(Color(toElement: .mainwhite))
                            .cornerRadius(60)
                            .padding()
                    }
                    
                    Spacer()
                    HStack{
                        ZStack {
                            Rectangle()
                                .frame(width: 430, height: 50)
                                .foregroundColor(Color(toElement: .maingrey))
                            
                            HStack(spacing: 90) {
                                Image("icon-polygon")
                                Image("icon-ellipse")
                                Image("icon-cube")
                                
                            }
                        }
                    }
                    
                }
                //.padding()
            }
        }
        .ignoresSafeArea()
    }
}

struct OnBoarding_Previews: PreviewProvider {
    static var previews: some View {
        self.devices {
            OnBoarding()
        }
    }
}
