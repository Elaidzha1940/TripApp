//  /*
//
//  Project: TripApp
//  File: Resources.swift
//  Created by: Elaidzha Shchukin
//  Date: 18.06.2023
//
//  Status: #In progress | #Not decorated
//
//  */

import Foundation

enum Resources {}

extension Resources {
    
    enum System: String, AssetConvertable {
        case burger, calendar, logo, photo, search, scrap, onboarding, userprofile
        
    }
    
    enum Icon: String, AssetConvertable {
        case cube, ellipce, polygon, whiteplus
    }
    
    enum Categories: String, AssetConvertable {
        case later
    }
}
