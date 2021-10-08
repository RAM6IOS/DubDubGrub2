//
//  ProfileView.swift
//  ProfileView
//
//  Created by MAC on 29/9/2021.
//

import SwiftUI

struct ProfileView: View {
    
    @State private var givenName: String = ""
    @State private var FirsName: String = ""
    @State private var LastName: String = ""
    @State private var CompanyName: String = ""
    @State private var bio: String = ""
    var body: some View {
        
            VStack{
                ZStack{
                    ColorBackground()
                    
                    HStack( spacing: 20){
                        ZStack{
                            AvaterView(size: 80)
                        
                            EidetImage()
                            
                        }
                        VStack(alignment: .leading ){
                            TextField("FirstName" , text: $FirsName)
                                .profilNameStyle()
                            TextField("LastName" , text: $LastName)
                                .font(.system(size: 32 , weight: .bold))
                                .lineLimit(1)
                                .minimumScaleFactor(0.75)
                            
                            TextField("Company Name" , text: $CompanyName)
                            
                                
                            
                        }
                        .padding(.trailing , 16)
                        
                        
                    }
                    .padding(.horizontal)
                    
                    
                        
                }
                .padding(.horizontal)
                
                CharactersRemsinView(caruter: bio.count)
                VStack{
                    TextEditor(text: $bio)
                        .frame( height: 100)
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.secondary,lineWidth: 1))
                        .padding(.horizontal)
                    
                    
                    
                }
                
                   
                Spacer()
                
                Button{
                    
                } label: {
                    DubButoen(nameButens: "Save Profle")
                }
                
                .cornerRadius(10)
            }
            .navigationTitle("Profile")
           
        
        
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
            .preferredColorScheme(.dark)
    }
}




struct ColorBackground: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25, style: .continuous)
            .frame( height: 130)
            .foregroundColor(Color(.secondarySystemBackground))
    }
}

struct EidetImage: View {
    var body: some View {
        Image(systemName: "square.and.pencil")
            .resizable()
            .scaledToFit()
            .frame(width: 14, height: 14)
            .foregroundColor(.white)
            .offset(y:30)
    }
}

struct CharactersRemsinView: View {
    var caruter: Int
    
    var body: some View {
        HStack{
            Text("Bio: ")
                .font(.caption)
                .foregroundColor(.secondary)
            +
            Text("\(100 - caruter)")
                .bold()
                .font(.caption)
                .foregroundColor(caruter <= 100 ? .brandPrimary : Color(.systemPink))
            +
            Text("Caracter Remain ")
                .font(.caption)
                .foregroundColor(.secondary)
            
            Spacer()
            Button{
                
            } label: {
                HStack{
                    Image(systemName: "mappin.and.ellipse")
                    Text("Check Out")
                        .bold()
                }
                .padding(10)
                .padding(.horizontal,5)
                .foregroundColor(.white)
                .background(Color.red)
                .cornerRadius(10)
                
                
            }
            .padding()
        }
        .padding(.horizontal)
    }
}
