//
//  LocationListView.swift
//  LocationListView
//
//  Created by MAC on 29/9/2021.
//

import SwiftUI

struct LocationListView: View {
   
    var body: some View {
        
        
        VStack{
            NavigationView{
                
                List(){
                    ForEach(0..<10){ data in
                        
                        NavigationLink(destination: LocationDerail()) {
                            LocationCall()
                            
                        }
                    }
                    
                }
                
                
                .listStyle(.grouped)
                .navigationBarTitle("Grup Sport")
                
                
            }
        }
        
        
        
    }
}

struct LocationListView_Previews: PreviewProvider {
    static var previews: some View {
       
        LocationListView()
            .preferredColorScheme(.dark)
        
    }
}








