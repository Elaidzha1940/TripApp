//  /*
//
//  Project: TripApp
//  File: PassesC.swift
//  Created by: Elaidzha Shchukin
//  Date: 26.06.2023
//
//  Status: #In progress | #Not decorated
//
//  */

import SwiftUI

struct PassesC: View {
    
    @State private var passesC: String = ""
    
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
                        FloatingLabelTextField(placeholder: "Название перевала", text: self.$passesC)
                        
                    }
                    .padding(.trailing)
                }
                .padding(.horizontal, 40)
                .padding(.bottom, 20)
           
                HStack(spacing: 30) {
                    
                    Text("Категория перевала")
                        .font(.custom(Fonts.Inter.regular, size: 20))

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
                                Image("system-star")
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
                            .padding(.horizontal)
                        }
                        
                        ZStack {
                            Text("не уверен")
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
                
                HStack(alignment: .firstTextBaseline) {
                    
                    Text("Сложность сущесвтенно величится в зависимости от погодных условий(снегопад, внезапное обледение склонов и пр.)")
                        .font(.custom(Fonts.Inter.regular, size: 10))
                        .frame(width: 130, height: 85)
                        .foregroundColor(
                            Color.init(toText: .bluecom)
                        )
                        .multilineTextAlignment(.leading)
                        .padding(.leading)

                    
                    Spacer()
                    
                    Text("Если вы не прошли этот перевал")
                        .font(.custom(Fonts.Inter.regular, size: 10))
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
                    
                    HStack {
                        Text("Дата рождения")
                            .font(.custom(Fonts.Inter.regular, size: 20))
                    }
                    .padding()
                
                    HStack {
                        ZStack {
                            Image("system-calendar")
                                .foregroundColor(
                                    Color.init(toText: .bluecom)
                                )
                                .offset(x: -75)
                        }
                        .frame(width: 210, height: 60)
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke()
                        )
                        .foregroundColor(Color(toElement: .mainblue))
                        .padding(.horizontal)
                        
                        ZStack(alignment: .center) {
                            Text("Сегодня (22.05.2022)")
                                .multilineTextAlignment(.center)
                                .font(.custom(Fonts.Inter.regular, size: 15))
                                .foregroundColor(
                                    Color.init(toText: .main)
                                )
                            
                        }
                        .frame(width: 140, height: 60)
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                                .fill(Color(toElement: .mainblue))
                        )
                        .padding(.horizontal)
                    }
                }
                
                VStack(alignment: .leading) {
                    
                    HStack {
                        Text("Координаты")
                            .font(.custom(Fonts.Inter.regular, size: 20))
                    }
                    .padding(.leading, 35)
                    .padding(
                    )
                    Divider()
                    
                    HStack {
                        ZStack {
                            Image("system-point")
                                .foregroundColor(
                                    Color.init(toText: .bluecom)
                                )
                                .offset(x: -75)
                            
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("N 55 36.4999")
                                    Text("E 3718.232")
                                }
                                .font(.custom(Fonts.Inter.regular, size: 16))
                                .foregroundColor(
                                    Color.init(toText: .bluecom)
                                )

                            }
                        }
                        .frame(width: 210, height: 60)
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke()
                        )
                        .foregroundColor(Color(toElement: .mainblue))
                        .padding(.horizontal)
                        
                        ZStack(alignment: .center) {
                            Text("1800 m")
                                .multilineTextAlignment(.center)
                                .font(.custom(Fonts.Inter.regular, size: 15))
                                .foregroundColor(
                                    Color.init(toText: .mainblack)
                                )
                            Text("Высота")
                                .font(.custom(Fonts.Inter.regular, size: 12))
                                .foregroundColor(
                                    Color.init(toText: .greytext)
                                )
                                .offset(x: -40, y: -18)
                            
                        }
                        .frame(width: 140, height: 60)
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke()
                        )
                        .foregroundColor(Color(toElement: .mainblue))
                        .padding(.horizontal)
                    }
                    .padding()
                    .padding(.horizontal)
                }
                
                //
                
                VStack(alignment: .leading) {
                    
                    Text("Фото")
                        .font(.custom(Fonts.Inter.regular, size: 20))
                        .foregroundColor(
                            Color.init(toText: .mainblack)
                        )
                    
                    Text("Добавление фото")
                        .font(.custom(Fonts.Inter.extralight, size: 19))

                    HStack {
                        
                        Image("")
                        
                        Text("из галереи")
                            .font(.custom(Fonts.Inter.bold, size: 16))

                        
                        Image("")
                        
                        Text("с камеры")
                            .font(.custom(Fonts.Inter.bold, size: 16))


                    }
                }
               // .padding()
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
