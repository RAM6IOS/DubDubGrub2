//
//  AppTabView.swift
//  AppTabView
//
//  Created by MAC on 29/9/2021.
//

import SwiftUI


struct AppTabView: View {
    
    var body: some View {
       
        TabView{
            LocationMapView()
                .tabItem {
                    Label("Map", systemImage: "map")
                }
            
            LocationListView()
                .tabItem {
                    Label("Locations", systemImage: "building")
                }
            NavigationView{
            ProfileView()
            }
               .tabItem {
                    Label("Profile", systemImage: "person")
                }
        }
        .background(Color.gray)
        .accentColor(.brandPrimary)
        
    }
}

struct AppTabView_Previews: PreviewProvider {
    static var previews: some View {
        AppTabView()
    }
}
