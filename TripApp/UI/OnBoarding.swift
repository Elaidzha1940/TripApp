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
                    
                    Rectangle()
                        .frame(width: 380, height: 250)
                        .foregroundColor(.black.opacity(0.2))
                    
                    HStack {
                        
                        Text("#ПОХОДЫ #СВОБОДА #ПРЕОДОЛЕНИЕ #ОКРЫТИЯ")
                            .font(.custom(Fonts.Inter.medium, size: 20))
                            .foregroundColor(Color(toText: .main))
                            .frame(width: 363, height: 143)
                        
                    }
                    .multilineTextAlignment(.center)
                    .padding()
                    
                    Text("ОПИШИ ПЕРЕВАЛ")
                        .font(.custom(Fonts.Inter.medium, size: 36))
                        .foregroundColor(Color(toText: .main))
                        .padding()
                    
                    
                    Text("Наполняем каталог перевалов вместе")
                        .font(.custom(Fonts.Inter.medium, size: 16))
                        .foregroundColor(Color(toText: .main))
                        .padding()
                    
                    Button {
                        //action
                    } label: {
                        Text("Войти")
                            .font(.custom(Fonts.Inter.medium, size: 20))
                            .foregroundColor(Color(toText: .mainblack))
                            .frame(width: 350, height: 50)
                            .background(Color(toElement: .mainwhite))
                            .cornerRadius(60)
                            .padding()
                    }
                    
                    Spacer()
                    
                    HStack(spacing: 1.0) {
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
        .ignoresSafeArea()
    }
}

#if DEBUG
struct OnBoarding_Previews: PreviewProvider {
    static var previews: some View {
        self.devices {
            OnBoarding()
        }
    }
}
#endif
