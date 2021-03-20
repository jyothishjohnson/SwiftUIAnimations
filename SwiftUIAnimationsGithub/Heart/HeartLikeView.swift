//
//  HeartLikeView.swift
//  SwiftUIAnimations
//
//  Created by jyothish.johnson on 13/03/21.
//

import SwiftUI

struct HeartLikeView: View {
    
    @State private var liked = false
    
    var body: some View {
 
            ZStack{
                ZStack {
                    Circle()
                        .frame(width: 22, height: 22)
                        .foregroundColor(liked ? .red : Color.white.opacity(0))
                        .offset(x: liked ? -72 : 0, y: 0)
                    Circle()
                        .frame(width: 22, height: 22)
                        .foregroundColor(liked ? .red : Color.white.opacity(0))
                        .offset(x: 0, y: liked ? -72 : 0)
                    Circle()
                        .frame(width: 22, height: 22)
                        .foregroundColor(liked ? .red : Color.white.opacity(0))
                        .offset(x: liked ? 72 : 0, y: 0)
                    Circle()
                        .frame(width: 22, height: 22)
                        .foregroundColor(liked ? .red : Color.white.opacity(0))
                        .offset (x: 0, y: liked ? 72 : 0)
                }
                .opacity(liked ? 0 : 1)
                .animation(.easeInOut(duration : 0.5))
                
                HStack {
                    Image(systemName:"heart.fill")
                        .resizable()
                        .frame(width: 32, height: 30, alignment: .center)
                        .foregroundColor(liked ? .red : Color.white.opacity(0))
                        .scaleEffect(liked ? 0.85 : 0.6)
                        .rotationEffect(Angle(degrees: liked ? -40 : 0))
                        .offset(x: liked ? -28 : 0, y: liked ? -48 : 0)
                    Image(systemName:"heart.fill")
                        .resizable()
                        .frame(width: 32, height: 30, alignment: .center)
                        .foregroundColor(liked ? .red : Color.white.opacity(0))
                        .scaleEffect(liked ? 0.85 : 0.6)
                        .rotationEffect(Angle(degrees: liked ? 40 : 0))
                        .offset(x: liked ? 28 : 0, y: liked ? -48 : 0)
                }
                .opacity(liked ? 0 : 1)
                .animation(.easeInOut(duration : 0.5))
                
                HStack {
                    Image(systemName:"heart.fill")
                        .resizable()
                        .frame(width: 32, height: 30, alignment: .center)
                        .foregroundColor(liked ? .red : Color.white.opacity(0))
                        .scaleEffect(liked ? 0.85 : 0.6)
                        .rotationEffect(Angle(degrees: liked ? -40 : 0))
                        .offset(x: liked ? -28 : 0, y: liked ? 48 : 0)
                    Image(systemName:"heart.fill")
                        .resizable()
                        .frame(width: 32, height: 30, alignment: .center)
                        .foregroundColor(liked ? .red : Color.white.opacity(0))
                        .scaleEffect(liked ? 0.85 : 0.6)
                        .rotationEffect(Angle(degrees: liked ? 40 : 0))
                        .offset(x: liked ? 28 : 0, y: liked ? 48 : 0)
                }
                .opacity(liked ? 0 : 1)
                .animation(.easeInOut(duration : 0.5))
                
                Image(systemName: liked ? "heart.fill" : "heart")
                    .resizable()
                    .frame(width: 128, height: 116, alignment: .center)
                    .foregroundColor(liked ? .red : .black)
                    .rotationEffect(Angle(degrees: liked ? 360 : 0))
                    .scaleEffect(liked ? 0.7 : 0.6)
                    .animation(.easeInOut(duration: 0.5))
                    .padding()
                    .onTapGesture {
                        liked.toggle()
                }
                
                Text("20K")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .offset(x: 0, y: 56)
                
            }
            .onAppear{
                Timer.scheduledTimer(withTimeInterval: 1.5, repeats: true) { (_) in
                    liked.toggle()
                }.fire()
            }
//            .offset(x: 172, y: 224)
//        }
        
            
    }
}

struct HeartLikeView_Previews: PreviewProvider {
    static var previews: some View {
        HeartLikeView()
    }
}
