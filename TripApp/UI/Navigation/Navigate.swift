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
            .navigationTitle("")
        }
    }
}

struct Navigate_Previews: PreviewProvider {
    static var previews: some View {
        self.devices {
            Navigate()
        }
    }
}
