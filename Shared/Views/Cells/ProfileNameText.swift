//
//  ProfileNameText.swift
//  ProfileNameText
//
//  Created by MAC on 8/10/2021.
//

import SwiftUI

struct ProfileNameText:ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(.system(size: 32 , weight: .bold))
            .lineLimit(1)
            .minimumScaleFactor(0.75)
    }
}
