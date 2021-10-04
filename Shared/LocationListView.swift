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
                    HStack{
                        
                        Image("default-avatar")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80 )
                            .clipShape(Circle())
                            .padding(.vertical)
                        
                        
                        VStack(alignment: .leading){
                            Text("AC Kitchen loge")
                                .font(.title2)
                                .lineLimit(1)
                                .minimumScaleFactor(0.75)
                            HStack{
                                VaterView(size: 35)
                                VaterView(size: 35)
                                VaterView(size: 35)
                                
                                
                            }
                            
                        }
                        .padding(.leading)
                        Spacer()
                        
                        NavigationLink(destination: LocationDerail()) {
                            
                        }
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


struct VaterView: View {
    var size: CGFloat
    var body: some View {
        Image("default-avatar")
            .resizable()
            .scaledToFit()
            .frame(width: size, height: size )
            .clipShape(Circle())
    }
}




