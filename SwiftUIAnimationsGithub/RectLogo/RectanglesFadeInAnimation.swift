//
//  RectanglesFadeInAnimation.swift
//  SwiftUIAnimations
//
//  Created by jyothish.johnson on 06/03/21.
//

import SwiftUI

struct RectanglesFadeInAnimation: View {
    
    @State var animate = false
    
    var body: some View {
        
        VStack(spacing: 1){
            
            Spacer()
            
            VStack(spacing: 1){
                
                HStack(spacing: 1){
                    
                    VStack {
                        
                        Spacer()
                        
                        Rectangle()
                            .foregroundColor(.blue)
                            .frame(width: 120, height: 60)
                            .opacity(animate ? 0 : 1)
                            .rotationEffect(Angle(degrees: animate ? 360 : 0))
                            .offset(x: animate ? -200 : 0, y: animate ? -300 : 0)
                    }
                    
                    VStack {
                        
                        Spacer()
                        
                        Rectangle()
                            .foregroundColor(.green)
                            .frame(width: 60, height: 120)
                            .opacity(animate ? 0 : 1)
                            .rotationEffect(Angle(degrees: animate ? 360 : 0))
                            .offset(x: animate ? 200 : 0, y: animate ? -300 : 0)
                    }
                }
                .frame(width:180, height: 180)
                
                HStack(spacing: 1){
                    
                    Spacer()
                        .frame(width: 119)
                    
                    VStack(spacing: 1) {
                        
                        Rectangle()
                            .foregroundColor(.red)
                            .frame(width: 60, height: 120)
                            .opacity(animate ? 0 : 1)
                            .rotationEffect(Angle(degrees: animate ? 360 : 0))
                            .offset(x: animate ? -200 : 0, y: animate ? 300 : 0)
                        
                        Spacer()
                    }
                    
                    VStack(spacing: 1){
                        
                        Rectangle()
                            .foregroundColor(.yellow)
                            .frame(width: 120, height: 60)
                            .opacity(animate ? 0 : 1)
                            .rotationEffect(Angle(degrees: animate ? 360 : 0))
                            .offset(x: animate ? 200 : 0, y: animate ? 300 : 0)
                        
                        Spacer()
                    }
                }
                .frame(width:180, height: 180)
            }
            .offset(x: -20, y: 0)
            
            Spacer()
            
            HStack {
                Spacer()
                Button(action: {
                    animate.toggle()
                }, label: {
                    Text("Animate")
                        .padding()
            })
                Spacer()
            }
            
        }
        .animation(.easeInOut(duration: 0.5))
    }
}

struct RectanglesFadeInAnimation_Previews: PreviewProvider {
    static var previews: some View {
        RectanglesFadeInAnimation()
    }
}
