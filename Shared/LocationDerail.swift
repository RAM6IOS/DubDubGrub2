//
//  LocationDerail.swift
//  LocationDerail
//
//  Created by MAC on 4/10/2021.
//

import SwiftUI

struct LocationDerail: View {
    let columns = [
            GridItem(.flexible()),
            GridItem(.flexible()),
            GridItem(.flexible()),]
    var body: some View {
        VStack{
            Image("default-banner-asset")
                .resizable()
                .scaledToFit()
            HStack{
                Label("123 Man Stit" , systemImage:"mappin.and.ellipse")
                    .font(.caption)
                    .foregroundColor(.secondary)
                    
                    
                Spacer()
            }
            .padding(.horizontal)
            
            VStack{
                Text("it s Chipotle . Enough said")
                    .lineLimit(3)
                    .minimumScaleFactor(0.75)
                    .font(.title2)
                    .padding(.leading)
                ZStack{
                    Capsule()
                        .frame( height: 80)
                        .foregroundColor(Color(.secondarySystemBackground))
                    HStack( spacing: 20){
                        Button {
                            
                        } label:{
                            locationedView(color: .brandPrimary, ImageName: "location.fill")
                            
                        }
                        Button {
                            
                        } label:{
                            locationedView(color: .brandPrimary, ImageName: "network")
                            
                        }
                        Button {
                            
                        } label:{
                            locationedView(color: .brandPrimary, ImageName: "phone.fill")
                            
                        }
                        
                        Button {
                            
                        } label:{
                            locationedView(color: .brandPrimary, ImageName: "person.fill.checkmark")
                            
                        }
                   
                   
                    }
                   
                }
                
                
                .cornerRadius(50)
                Text("Who s Here?")
                    .bold()
                    .font(.title2)
                ScrollView{
                LazyVGrid(columns: columns, content: {
                    VaterImageView(size: 60, name: "Ramzi")
                    VaterImageView(size: 60, name: "Ramo")
                    VaterImageView(size: 60, name: "Alne")
                    VaterImageView(size: 60, name: "Ramzi")
                    VaterImageView(size: 60, name: "Ramzi")
                    VaterImageView(size: 60, name: "Ramzi")
                   
                })
                
                }
            
                
            }
            .padding()
               
            
        }
        .navigationTitle("Chipole")
       .navigationBarTitleDisplayMode(.inline)
       .navigationBarBackButtonHidden(true)
       .navigationBarItems(
                                   
                                   
                                
           trailing:
                                       
           Button("Dismiss", action: { })
           .accentColor(.pink)
       )
    Spacer()
        
    
        
    }
}

struct LocationDerail_Previews: PreviewProvider {
    static var previews: some View {
        LocationDerail()
    }
}


            struct locationedView: View {
                var color: Color
                var ImageName : String
                var body: some View {
                  
                        ZStack{
                            Capsule()
                                .foregroundColor(color)
                                .frame(width: 60, height: 60)
                            Image(systemName: ImageName)
                                .resizable()
                                .foregroundColor(.white)
                                .frame(width: 22, height: 22)
                        }
                        
                    
                }
            }


            struct VaterImageView: View {
                var size: CGFloat
                var name: String
                var body: some View {
                    VStack{
                    Image("default-avatar")
                        .resizable()
                        .scaledToFit()
                        .frame(width: size, height: size )
                        .clipShape(Circle())
                        Text(name)
                            .bold()
                            .lineLimit(1)
                            .minimumScaleFactor(0.75)
                    }
                }
            }
