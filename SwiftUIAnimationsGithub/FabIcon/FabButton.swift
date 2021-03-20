//
//  FabButton.swift
//  SwiftUIAnimations
//
//  Created by jyothish.johnson on 06/03/21.
//

import SwiftUI

struct FabButton: View {
    
    @State var change : Bool = false
    
    var body: some View {
        VStack {
            Spacer()
            ZStack {
                
                ZStack {
                    Circle()
                        .foregroundColor(.blue)
                        .frame(width: 60, height: 60, alignment: .center)
                    Image(systemName: "bolt.horizontal")
                        .resizable()
                        .frame(width: 32, height: 32, alignment: .center)
                        .foregroundColor(.white)
                        .rotationEffect(Angle(degrees: 45))
                    
                }
                .opacity(change ? 1 : 0)
                .offset(x: 0, y: change ? -188 : 0)
                
                ZStack {
                    Circle()
                        .foregroundColor(.blue)
                        .frame(width: 60, height: 60, alignment: .center)
                    Image(systemName: "scribble")
                        .resizable()
                        .frame(width: 32, height: 32, alignment: .center)
                        .foregroundColor(.white)
                        .offset(x: -2, y: -2)
                    
                }
                .opacity(change ? 1 : 0)
                .offset(x: 0, y: change ? -100 : 0)
                
                
                Circle()
                    .frame(width: 72, height: 72, alignment: .center)
                    .foregroundColor(change ? Color(hex: "ff8585") : .blue)
                    .padding()
                
                Image(systemName: "plus")
                    .resizable()
                    .frame(width: 36, height: 36, alignment: .center)
                    .foregroundColor(.white)
                    .rotationEffect(Angle.degrees(change ? 45 : 0))
                
                
            }
            .animation(.easeInOut)
            .onTapGesture {
                change.toggle()
        }
        }
    }
}


struct FabButton_Previews: PreviewProvider {
    
    static var previews: some View {
        FabButton()
    }
}
