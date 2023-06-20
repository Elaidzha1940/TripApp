//  /*
//
//  Project: TripApp
//  File: PreviewProvider.swift
//  Created by: Elaidzha Shchukin
//  Date: 18.06.2023
//
//  Status: #In progress | #Decorated
//
//  */

import SwiftUI

public extension PreviewProvider {
    
    @ViewBuilder static func devices(option: PreviewProviderOption = .minAndMax, @ViewBuilder content: () -> some View) -> some View {
        switch option {
        case .minAndMax:
            self.minAndMax(content: content)
        default :
            self.oneDevice(option: option, content: content)
        }
    }
    
    static private func minAndMax(@ViewBuilder content: () -> some View) -> some View {
        Group{
//            content()
//                .preferredColorScheme(.dark)
//                .previewDevice(PreviewDevice(rawValue: PreviewProviderOption.iPhone14ProMax.rawValue))
//                .previewDisplayName("\(PreviewProviderOption.iPhone14ProMax.label) - Dark")
            content()
                .preferredColorScheme(.light)
                .previewDevice(PreviewDevice(rawValue: PreviewProviderOption.iPhone14ProMax.rawValue))
                .previewDisplayName("\(PreviewProviderOption.iPhone14ProMax.label) - Light")
//            content()
//                .preferredColorScheme(.dark)
//                .previewDevice(PreviewDevice(rawValue: PreviewProviderOption.iPhoneSE1st.rawValue))
//                .previewDisplayName("\(PreviewProviderOption.iPhoneSE1st.label) - Dark")
            content()
                .preferredColorScheme(.light)
                .previewDevice(PreviewDevice(rawValue: PreviewProviderOption.iPhoneSE1st.rawValue))
                .previewDisplayName("\(PreviewProviderOption.iPhoneSE1st.label) - Light")
        }
    }
    
    static private func oneDevice(option: PreviewProviderOption, @ViewBuilder content: () -> some View) -> some View{
        Group{
            content()
                .preferredColorScheme(.dark)
                .previewDevice(PreviewDevice(rawValue: option.rawValue))
                .previewDisplayName("\(option.label) - Dark")
            content()
                .preferredColorScheme(.light)
                .previewDevice(PreviewDevice(rawValue: option.rawValue))
                .previewDisplayName("\(option.label) - Light")
        }
    }
}

