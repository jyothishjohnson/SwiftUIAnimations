//
//  DragActionView.swift
//  SwiftUIAnimations
//
//  Created by jyothish.johnson on 17/04/21.
//

import SwiftUI

struct DragActionView: View {
    
    @GestureState var dragOffSet : CGSize = .zero
    @State var offset : Double = 0.0
    @State var dismiss = false
    
    var profile : TProfile!
    
    var image : Image {
        return ImageCompressor.compressedImage(imageName: profile.imageName, frame: CGSize(width: 372, height: 600))!
    }
    
    var body: some View {
        HStack {
            ZStack {
                profile.image
//                Image(profile.image+"-1")
                    .resizable()
                    .frame(width: 372, height: 600)
                    .scaledToFill()
                    .cornerRadius(12)
                TProfileDescView(profile: profile)
                
            }
            .frame(width: 372, height: 600)
        }
        .gesture(DragGesture()
                    .updating($dragOffSet, body: { (value, dragOffset, transaction) in
                        dragOffset = value.translation
                    })
                    .onEnded({ (value) in
                        offset = Double(value.translation.width)
//                        print(dragOffSet.width, offset)
                        
                        if value.translation.width > 80 || value.translation.width < -80{
                            dismiss = true
                        }else {
                            offset = 0
                        }
                    })
        )
        .rotationEffect(Angle(degrees: (Double(dragOffSet.width) + offset) * 0.2), anchor: dragOffSet.width < 0 ? .bottomLeading : .bottomTrailing)
        .offset(x: CGFloat(offset) + dragOffSet.width, y: -abs((CGFloat(offset) + dragOffSet.width) * 0.4))
        .opacity(dismiss ? 0 : 1)
        .animation(.linear)
        
    }
}

struct DragActionView_Previews: PreviewProvider {
    static var previews: some View {
        TinderHomeView()
    }
}
