//  /*
//
//  Project: TripApp
//  File: Color.swift
//  Created by: Elaidzha Shchukin
//  Date: 18.06.2023
//
//  Status: #In progress | #Not decorated
//
//  */

import SwiftUI

internal extension Color {
    
    //MARK: Element
    //=============================================
    enum Element: String, AssetColor {
        case mainblue, maingrey, mainwhite, buttoncolor
    }
    init(toElement option: Self.Element){
        self.init(option.colorName)
    }
    
    //MARK: Text
    //=============================================
    enum Text: String, AssetColor {
        case main, mainblack, mainblue, blacktext
    }
    init(toText option: Self.Text){
        self.init(option.colorName)
    }
    
    //MARK: Background
    //=============================================
    enum Background: String, AssetColor {
        case main
    }
    init(toBackground option: Self.Background){
        self.init(option.colorName)
    }
    
    //MARK: Basic
    //=============================================
    enum Basic: String, AssetColor {
        case accent
    }
    init(toBasic option: Self.Basic){
        self.init(option.colorName)
    }
}



