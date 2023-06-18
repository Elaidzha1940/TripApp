//  /*
//
//  Project: TripApp
//  File: Text.swift
//  Created by: Elaidzha Shchukin
//  Date: 18.06.2023
//
//  Status: #In progress | #Decorated
//
//  */

import SwiftUI


extension Text {
    func soffitMenuFont() -> Text {
        var text = self
        text = text.font(.custom("Roboto-Medium", size: 12))
        return text
    }
    
    func soffitPriceFont() -> Text {
        var text = self
        text = text.font(.custom("Roboto-Medium", size: 16))
        return text
    }
}
