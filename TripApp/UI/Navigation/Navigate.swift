//  /*
//
//  Project: TripApp
//  File: Navigate.swift
//  Created by: Elaidzha Shchukin
//  Date: 09.07.2023
//
//  S
//
//  */ 

import SwiftUI

struct Navigate: View {
    var body: some View {
        
        NavigationView {
            VStack {
                NavigationLink(destination: UserProfile()) {
                    OnBoarding()
                }
                
            }
        }
    }
}

struct UserProfileOne: View {
    var body: some View {
        
        VStack {
            NavigationLink(destination: PassList()) {
                UserProfileOne()
            }
        }
    }
}

//struct PassListOne: View {
//    var body: some View {
//
//
//        VStack {
//            NavigationLink(destination: UserProfi()) {
//                //UserProfile()
//            }
//        }
//    }
//}

struct Navigate_Previews: PreviewProvider {
    static var previews: some View {
        self.devices {
            Navigate()
        }
    }
}
