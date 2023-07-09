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
    @State var selectedDate1 = Date()
    
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
                    
                    VStack(alignment: .leading) {
                        
                        HStack {
                            Text("Дата рождения")
                                .font(.custom(Fonts.Inter.regular, size: 20))
                        }
                        .padding()
                        
                        HStack {
                            ZStack(alignment: .leading) {
                                
                                DatePicker("",
                                           selection: $selectedDate1,
                                           displayedComponents: .date)
                                .labelsHidden()
                                .frame(width: 220, height: 60)
                                .foregroundColor(Color(toText: .mainblack))
                                .offset(x: 15)
                                .background(
                                    RoundedRectangle(cornerRadius: 8)
                                        .stroke()
                                        .foregroundColor(Color(toElement: .mainblack))
                                )
                                Image(Resources.System.smallcalendar.assetName)
                                    .foregroundColor(Color(toElement: .mainblue))
                                    .frame(width: 15)
                                    .padding()
                            }
                            .padding(.horizontal)
                            
                            ZStack(alignment: .center) {
                                VStack {
                                    Text("Сегодня")
                                        .multilineTextAlignment(.center)
                                        .font(.custom(Fonts.Inter.regular, size: 15))
                                        .foregroundColor(
                                            Color.init(toText: .blacktext)
                                        )
                                    Text("(22.05.2022)")
                                        .multilineTextAlignment(.center)
                                        .font(.custom(Fonts.Inter.regular, size: 13))
                                        .foregroundColor(
                                            Color.init(toText: .blacktext).opacity(0.6)
                                        )
                                }
                                
                            }
                            .frame(width: 140, height: 60)
                            .background(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke()
                            )
                            .foregroundColor(Color(toElement: .mainblue))
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
                            .frame(width: 220, height: 60)
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
                        
                        Text("Фото")
                            .font(.custom(Fonts.Inter.regular, size: 20))
                            .foregroundColor(
                                Color.init(toText: .mainblack)
                            )
                            .padding(.leading, 35)
                            .padding()
                    }
                }
                
                VStack(alignment: .leading) {
                    
                    Image("system-mountain")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 420, height: 320)

                    
                    Text("Поясните что на фото")
                        .font(.custom(Fonts.Inter.regular, size: 20))
                        .foregroundColor(
                            Color.init(toText: .blacktext)
                        )
                        .padding(3)
                    
                    ZStack {
                        ZStack {
                            Button {
                                //action
                            } label: {
                                Image("system-micro")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 20, height: 25)
                                    .cornerRadius(8)
                                
                            }
                            .frame(width: 25, height: 35)
                            .background(
                                RoundedRectangle(cornerRadius: 8)
                                    .fill(Color(toElement: .mainblue))
                            )
                            .offset(x: 160, y: -55)
                        }
                        
                        ZStack(alignment: .center) {
                            
                            Text("Перевал соединяет озеро Верхнее Крпекое и реку Тихая. ри подьеме открываются красивые виды а озеро Крепкое. После подъема более плоский участок.")
                                .multilineTextAlignment(.leading)
                                .font(.custom(Fonts.Inter.regular, size: 18))
                                .foregroundColor(
                                    Color.init(toText: .mainblack)
                                )
                                .padding()
                            
                        }
                        .frame(width: 360, height: 160)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color(toElement: .mainblue), lineWidth: 3)
                        )
                        .padding(.horizontal)
                    }
                    
                    HStack {
                        
                        Rectangle()
                            .frame(width: 120, height: 110)
                            .cornerRadius(9)
                            .foregroundColor(.gray)
                        
                        VStack(alignment: .leading, spacing: 20) {
                            
                            Text("Направление")
                                .font(.custom(Fonts.Inter.regular, size: 20))
                                .foregroundColor(
                                    Color.init(toText: .mainblack)
                                )
                            
                            Text("Восток")
                                .font(.custom(Fonts.Inter.regular, size: 16))
                                .foregroundColor(
                                    Color.init(toText: .greytext)
                                )
                        }
                    }
                    .padding()
                    
                }
                
                Button {
                    //action
                } label: {
                    Text("Войти")
                        .font(.custom(Fonts.Inter.medium, size: 20))
                        .foregroundColor(Color(toText: .main))
                        .frame(width: 360, height: 50)
                        .background(Color(toElement: .mainblue))
                        .cornerRadius(60)
                        .padding()
                }
            }
            
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
            .offset(y: 34)
        }
    }
}

#if DEBUG
struct PassesFilled_Previews: PreviewProvider {
    static var previews: some View {
        self.devices {
            PassesFilled()
        }
    }
}
#endif
