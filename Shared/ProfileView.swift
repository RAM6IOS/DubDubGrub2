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
        NavigationView{
            VStack{
                ZStack{
                    RoundedRectangle(cornerRadius: 25, style: .continuous)
                        .frame( height: 130)
                        .foregroundColor(Color(.secondarySystemBackground))
                    
                    HStack( spacing: 20){
                        ZStack{
                        Image("default-avatar")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80 )
                            .clipShape(Circle())
                            Image(systemName: "square.and.pencil")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 14, height: 14)
                                .foregroundColor(.white)
                                .offset(y:30)
                            
                        }
                        VStack(alignment: .leading ){
                            TextField("FirstName" , text: $FirsName)
                                .font(.system(size: 32 , weight: .bold))
                                .lineLimit(1)
                                .minimumScaleFactor(0.75)
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
                
                HStack{
                    Text("Bon:\(100 - bio.count) characters remain")
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
                VStack{
                    TextEditor(text: $bio)
                        .frame( height: 100)
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.secondary,lineWidth: 1))
                        .padding(.horizontal)
                    
                    
                    
                }
                
                   
                Spacer()
                
                Button{
                    
                } label: {
                    Text("Save Profile")
                        .bold()
                        .font(.title3)
                        .frame(width: 250, height: 50 )
                        .background(Color.brandPrimary)
                        .foregroundColor(.white)
                        
                }
                
                .cornerRadius(10)
            }
            .navigationTitle("Profile")
           
        }
        
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
            .preferredColorScheme(.dark)
    }
}
