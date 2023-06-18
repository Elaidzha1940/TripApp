//  /*
//
//  Project: TripApp
//  File: PreviewProviderOption.swift
//  Created by: Elaidzha Shchukin
//  Date: 18.06.2023
//
//  Status
//
//  */

public enum PreviewProviderOption: String {
    case minAndMax
    case iPhone14ProMax = "iPhone 14 Pro Max"
    case iPhoneSE1st = "iPhone SE (1st generation)"
    
    public var label: String {
        switch self {
        case .iPhone14ProMax:
            return "14 Pro Max"
        case .iPhoneSE1st:
            return "SE"
        default:
            fatalError("Unexpected state")
        }
    }
}
