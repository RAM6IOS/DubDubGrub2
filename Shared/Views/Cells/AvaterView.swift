//
//  AvaterView.swift
//  AvaterView
//
//  Created by MAC on 8/10/2021.
//

import SwiftUI

struct AvaterView: View {
    var size: CGFloat
    var body: some View {
        Image("default-avatar")
            .resizable()
            .scaledToFit()
            .frame(width: size, height: size )
            .clipShape(Circle())
    }
}

struct AvaterView_Previews: PreviewProvider {
    static var previews: some View {
        AvaterView(size:35)
    }
}
