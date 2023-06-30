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
                
                HStack(spacing: 30) {
                    
                    Text("Категория перевала")
                        .font(.custom(Fonts.Inter.regular, size: 20))
                        .padding()
                        Spacer()
                    
                    ZStack {
                        Circle()
                            .stroke()
                        Image("icon-iletterblue")
                    }
                    .frame(width: 20, height: 25)
                    .foregroundColor(Color(toElement: .mainblue))
                    .padding()
                }
                .padding(.horizontal, 30)
                
                //
                HStack(spacing: 30) {
                    ZStack {
                        Text("H/K")
                            .font(.custom(Fonts.Inter.regular, size: 16))
                            .foregroundColor(
                                Color.init(toText: .bluecom)
                            )
                    }
                    .frame(width: 70, height: 45)
                    .background(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke()
                    )
                    .foregroundColor(Color(toElement: .greycom))
                    .padding(.horizontal, 30)
                    
                    ZStack {
                        Text("1А")
                            .font(.custom(Fonts.Inter.regular, size: 16))
                            .foregroundColor(
                                Color.init(toText: .main)
                            )
                    }
                    .frame(width: 70, height: 45)
                    .background(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke()
                    )
                    .background(
                        RoundedRectangle(cornerRadius: 8)
                            .fill(Color(toElement: .mainblue))
                    )
                    .padding(.horizontal, 30)
                    
                    ZStack {
                        Text("1Б")
                            .font(.custom(Fonts.Inter.regular, size: 16))
                            .foregroundColor(
                                Color.init(toText: .bluecom)
                            )
                    }
                    .frame(width: 70, height: 45)
                    .background(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke()
                    )
                    .foregroundColor(Color(toElement: .greycom))
                    .padding(.horizontal, 30)
                }
                .padding()
                
                HStack(spacing: 37) {
                    
                    ZStack {
                        Text("2А")
                            .font(.custom(Fonts.Inter.regular, size: 16))
                            .foregroundColor(
                                Color.init(toText: .bluecom)
                            )
                    }
                    .frame(width: 70, height: 45)
                    .background(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke()
                    )
                    .foregroundColor(Color(toElement: .greycom))
                    
                    ZStack {
                        Text("2Б")
                            .font(.custom(Fonts.Inter.regular, size: 16))
                            .foregroundColor(
                                Color.init(toText: .bluecom)
                            )
                    }
                    .frame(width: 70, height: 45)
                    .background(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke()
                    )
                    .foregroundColor(Color(toElement: .greycom))
                    
                    ZStack {
                        Text("3А")
                            .font(.custom(Fonts.Inter.regular, size: 16))
                            .foregroundColor(
                                Color.init(toText: .bluecom)
                            )
                    }
                    .frame(width: 70, height: 45)
                    .background(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke()
                    )
                    .foregroundColor(Color(toElement: .greycom))
                    
                    ZStack {
                        Text("3Б")
                            .font(.custom(Fonts.Inter.regular, size: 16))
                            .foregroundColor(
                                Color.init(toText: .bluecom)
                            )
                    }
                    .frame(width: 70, height: 45)
                    .background(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke()
                    )
                    .foregroundColor(Color(toElement: .greycom))
                }
                .padding(.bottom, 5)
                
                VStack {
                    
                    HStack(spacing: 33) {
                        
                        VStack {
                            Text("Добавить")
                                .font(.custom(Fonts.Inter.medium, size: 14))
                            
                            ZStack {
                                Image("system-starw")
                                    .font(.custom(Fonts.Inter.regular, size: 16))
                                    .foregroundColor(
                                        Color.init(toText: .main)
                                    )
                            }
                            .frame(width: 70, height: 45)
                            .background(
                                RoundedRectangle(cornerRadius: 8)
                                    .fill(Color(toElement: .mainblue))
                            )
                            .padding(.horizontal)
                        }
                        
                        ZStack {
                            Text("не уверен")
                                .font(.custom(Fonts.Inter.regular, size: 16))
                                .foregroundColor(
                                    Color.init(toText: .main)
                                )
                        }
                        .frame(width: 95, height: 45)
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                                .fill(Color(toElement: .mainblue))
                        )
                        .foregroundColor(Color(toElement: .greycom))
                        .padding(.leading, 5)
                        .padding(.horizontal)
                        
                        ZStack {
                            Text("оценочно")
                                .font(.custom(Fonts.Inter.regular, size: 16))
                                .foregroundColor(
                                    Color.init(toText: .bluecom)
                                )
                        }
                        .frame(width: 95, height: 45)
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke()
                        )
                        .foregroundColor(Color(toElement: .greycom))
                        .padding(.horizontal)
                    }
                    .padding()
                    .padding(.top)
                    
                }
                
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
