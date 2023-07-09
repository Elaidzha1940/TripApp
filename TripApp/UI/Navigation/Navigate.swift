//
//  Navigate.swift
//  TripApp
//
//  Created by Elaidzha Shchukin on 09.07.2023.
//

import SwiftUI

struct Navigate: View {
    var body: some View {
        
        NavigationView {
            VStack {
                
                OnBoarding()
                
                NavigationLink {
                    UserProfile()
                } label: {
                    Text("Войти")

                }
            }
            .navigationTitle("")
            //.navigationBarBackButtonHidden(false)
        }
    }
}

struct Navigate_Previews: PreviewProvider {
    static var previews: some View {
        Navigate()
    }
}
