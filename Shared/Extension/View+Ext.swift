//
//  View+Ext.swift
//  View+Ext
//
//  Created by MAC on 8/10/2021.
//

import SwiftUI


extension View {
    func profilNameStyle() -> some View{
        self.modifier(ProfileNameText())
        
    }
}
