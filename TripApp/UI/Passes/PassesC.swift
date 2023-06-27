//  /*
//
//  Project: TripApp
//  File: PassesC.swift
//  Created by: Elaidzha Shchukin
//  Date: 26.06.2023
//
//  S
//
//  */

import SwiftUI

struct PassesC: View {
    
    @State private var passesC: String = ""
    
    var body: some View {
        
        VStack {
            HStack {
                Text("Добавление перевала")
                    .font(.custom("Inter-Bold", size: 20))
                    .foregroundColor(Color(toText: .mainblack))
                    .padding()
            }
            
            Divider()
                .frame(height: 1)
                .background(Color.black)
                    
            VStack {
                Group {
                    FloatingLabelTextField(placeholder: "Название перевала", text: self.$passesC)
                    
                }
            }
            .padding()
            
            HStack {
                
              Text("Категория перевала")
                    .font(.custom("Inter-Regular", size: 20))

                Spacer()
                ZStack {
                    Circle()
                    
                    Image("icon-iletter")
                }
                .frame(width: 20, height: 25)
                .foregroundColor(Color(toElement: .mainblue))
            }
            .padding()
            .padding(.horizontal, 3)
            
            HStack(spacing: 30) {
                ZStack {
                    Text("H/K")
                        .font(.custom("Inter-Regular", size: 16))
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
                        .font(.custom("Inter-Regular", size: 16))
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
                    Text("1Б")
                        .font(.custom("Inter-Regular", size: 16))
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
                        .font(.custom("Inter-Regular", size: 16))
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
                        .font(.custom("Inter-Regular", size: 16))
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
                        .font(.custom("Inter-Regular", size: 16))
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
                        .font(.custom("Inter-Regular", size: 16))
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
        
                HStack(spacing: 50) {
                    VStack {
                        Text("Добавить")
                            .font(.custom("Inter-Medium", size: 14))

                        ZStack {
                            Image("system-star")
                                .font(.custom("Inter-Regular", size: 16))
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
                    
                    ZStack {
                        Image("system-star")
                            .font(.custom("Inter-Regular", size: 16))
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
                    
                    ZStack {
                        Image("system-star")
                            .font(.custom("Inter-Regular", size: 16))
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
                }
                .padding()
            }
            
            Spacer()
        }
    }
}

struct PassesC_Previews: PreviewProvider {
    static var previews: some View {
        self.devices {
            PassesC()
        }
    }
}
