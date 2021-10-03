//
//  LocationMapView.swift
//  LocationMapView
//
//  Created by MAC on 29/9/2021.
//

import SwiftUI
import MapKit
struct LocationMapView: View {
    @State private  var  rengion = MKCoordinateRegion(center:CLLocationCoordinate2D(latitude: 37.331516, longitude: -121.891054) , span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.1))
    var body: some View {
        ZStack{
            Map(coordinateRegion: $rengion)
                .ignoresSafeArea()
            VStack{
               Image("ddg-map-logo")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 70)
                    .shadow(radius: 10)
                    Spacer()
            }
        }
    }
}

struct LocationMapView_Previews: PreviewProvider {
    static var previews: some View {
        LocationMapView()
    }
}
