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
            
            ScrollView {
                VStack {
                    Group {
                        FloatingLabelTextField(placeholder: "Название перевала", text: self.$passesC)
                        
                    }
                    .padding(.trailing)
                }
                .padding(.horizontal, 40)
                .padding(.bottom, 20)
           
                HStack(spacing: 30) {
                    
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
                .padding(5)
                .padding(.horizontal, 30)
                
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
                    
                    HStack(spacing: 33) {
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
                            .padding(.horizontal)
                        }
                        
                        ZStack {
                            Text("не уверен")
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
                        .padding(.horizontal)
                        
                        ZStack {
                            Text("оценочно")
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
                        .padding(.horizontal)
                    }
                    .padding()
                    .padding(.top)
                }
                
                HStack(alignment: .firstTextBaseline) {
                    
                    Text("Сложность сущесвтенно величится в зависимости от погодных условий(снегопад, внезапное обледение склонов и пр.)")
                        .font(.custom("Inter-Regular", size: 10))
                        .frame(width: 130, height: 85)
                        .foregroundColor(
                            Color.init(toText: .bluecom)
                        )
                        .multilineTextAlignment(.leading)
                        .padding(.leading)

                    
                    Spacer()
                    
                    Text("Если вы не прошли этот перевал")
                        .font(.custom("Inter-Regular", size: 10))
                        .frame(width: 120, height: 75)
                        .foregroundColor(
                            Color.init(toText: .bluecom)
                        )
                        .multilineTextAlignment(.leading)
                        .padding(.leading)
                    
                }
                .offset(y: -30)
                .padding(.horizontal, 30)
                
                Divider()
                
                //
                VStack(alignment: .leading) {
                    
                        Text("Дата рождения")
                            .font(.custom("Inter-Regular", size: 20))
                            
                
                }
                    
            }
            .padding()
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
