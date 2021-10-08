//
//  DubButoen.swift
//  DubButoen
//
//  Created by MAC on 8/10/2021.
//

import SwiftUI

struct DubButoen: View {
    var nameButens  : String
    var body: some View {
        
        Text(nameButens)
            .bold()
            .font(.title3)
            .frame(width: 250, height: 50 )
            .background(Color.brandPrimary)
            .foregroundColor(.white)
    }
}

struct DubButoen_Previews: PreviewProvider {
    static var previews: some View {
        DubButoen(nameButens: "Save Profile")
    }
}
