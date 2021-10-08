//
//  LocationCall.swift
//  LocationCall
//
//  Created by MAC on 8/10/2021.
//

import SwiftUI

struct LocationCall: View {
    var body: some View {
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
                    
               
                    
                    
                }
                
            }
            .padding(.leading)
            Spacer()
            
           
            
            
        }
    }
}


struct LocationCall_Previews: PreviewProvider {
    static var previews: some View {
        LocationCall()
    }
}
