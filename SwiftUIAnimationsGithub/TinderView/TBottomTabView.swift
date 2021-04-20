//
//  TBottomTabView.swift
//  SwiftUIAnimations
//
//  Created by jyothish.johnson on 18/04/21.
//

import SwiftUI

struct TBottomTabView: View {
    var body: some View {
        HStack{
            
            Circle()
                .frame(width: 54, height: 54)
                .foregroundColor(.white)
                .overlay(
                    Image("reload")
                        .resizable()
                        .foregroundColor(.yellow)
                        .padding(10)
                    
                )
                .shadow(color: Color(hex: "dee2e6"), radius: 10, x: 2, y: 2)
            
            Spacer()
        
            Circle()
                .frame(width: 60, height: 60)
                .foregroundColor(.white)
                .overlay(
                    Image("cancel")
                        .resizable()
                        .foregroundColor(.red)
                        .padding()
                    
                )
                .shadow(color: Color(hex: "dee2e6"), radius: 10, x: 2, y: 2)
            
            Spacer()
            
            Circle()
                .frame(width: 54, height: 54)
                .foregroundColor(.white)
                .overlay(
                    Image(systemName: "star.fill")
                        .resizable()
                        .foregroundColor(.blue)
                        .padding()
                    
                )
                .shadow(color: Color(hex: "dee2e6"), radius: 10, x: 2, y: 2)
            
            Spacer()
            
            Circle()
                .frame(width: 60, height: 60)
                .foregroundColor(.white)
                .overlay(
                    Image(systemName: "heart.fill")
                        .resizable()
                        .foregroundColor(.green)
                        .padding()
                    
                )
                .shadow(color: Color(hex: "dee2e6"), radius: 10, x: 2, y: 2)
            
            Spacer()
            
            Circle()
                .frame(width: 54, height: 54)
                .foregroundColor(.white)
                .overlay(
                    Image(systemName: "bolt.fill")
                        .resizable()
                        .foregroundColor(.purple)
                        .padding()
                    
                )
                .shadow(color: Color(hex: "dee2e6"), radius: 10, x: 2, y: 2)

        }
        .padding()
    }
}

struct TBottomTabView_Previews: PreviewProvider {
    static var previews: some View {
        TBottomTabView()
            .previewLayout(.sizeThatFits)
    }
}
