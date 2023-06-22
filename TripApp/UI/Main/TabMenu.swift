//  /*
//
//  Project: TripApp
//  File: TabMenu.swift
//  Created by: Elaidzha Shchukin
//  Date: 20.06.2023
//
//  S
//
//  */

import SwiftUI

struct TabMenu: View {
    
    @State var index = 0
    
    var body: some View {
        
        VStack(alignment: .leading) {
            CustomTabs(index: self.$index)
        }
        .padding(.leading, 60)
    }
}

struct TabMenu_Previews: PreviewProvider {
    static var previews: some View {
        self.devices {
            TabMenu()
        }
    }
}

struct CustomTabs : View {
    
    @Binding var index : Int
    
    var body: some View {
        
        HStack {
            
            Button(action: {
                
                self.index = 0
                
            }) {
                Image("icon-polygon")
            }
            .foregroundColor(Color(toElement: .mainblack).opacity(self.index == 0 ? 1 : 0.2))
            
            Spacer(minLength: 0)
            
            Button(action: {
                
                self.index = 1

            }) {
                Image("icon-ellipse")
            }
            .foregroundColor(Color(toElement: .mainblack).opacity(self.index == 1 ? 1 : 0.2))

            Spacer(minLength: 0)

            Button(action: {
                
                self.index = 2

            }) {
                Image("icon-cube")
            }
            .foregroundColor(Color(toElement: .mainblack).opacity(self.index == 2 ? 1 : 0.2))

            Spacer(minLength: 0)

        }
        .padding(.horizontal, 20)
    }
}
