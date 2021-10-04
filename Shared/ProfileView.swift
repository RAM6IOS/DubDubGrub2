//
//  ProfileView.swift
//  ProfileView
//
//  Created by MAC on 29/9/2021.
//

import SwiftUI

struct ProfileView: View {
    @State var name = "Ramzi"
    var body: some View {
                TextField("Name's placeholder", text: $name)
                           .padding()
                            .background(Color(.systemGray6))
                            .cornerRadius(5.0)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
            .preferredColorScheme(.dark)
    }
}
