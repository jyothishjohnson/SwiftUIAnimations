//
//  CirclesLoader1.swift
//  SwiftUIAnimationsGithub
//
//  Created by jyothish.johnson on 30/03/21.
//

import SwiftUI

struct CirclesLoading: View {
    @State private var animate1 = false
    @State private var animate2 = false
    @State private var animate3 = false
    @State private var animate4 = false
    @State private var animate5 = false
    @State private var animate6 = false
    @State private var animate7 = false
    @State private var animate8 = false
    
    @State private var timerCount = 0
    @State private var circleColor : Color = .blue


    
    //0 -> 180
    let xy0 = {
        getXYFor(angle: 0, radius: 90)
    }()
    let xy180 = {
        getXYFor(angle: 180, radius: 90)
    }()
    
    //22.5 -> 202.5
    let xy225 = {
        getXYFor(angle: 22.5, radius: 90)
    }()
    let xy2025 = {
        getXYFor(angle: 202.5, radius: 90)
    }()
    
    //45 -> 225
    let xy45 = {
        getXYFor(angle: 45, radius: 90)
    }()
    let _xy225 = {
        getXYFor(angle: 225, radius: 90)
    }()
    
    //77.5 -> 247.5
    let xy775 = {
        getXYFor(angle: 67.5, radius: 90)
    }()
    let xy2475 = {
        getXYFor(angle: 247.5, radius: 90)
    }()
    
    //90 -> 270
    let xy90 = {
        getXYFor(angle: 90, radius: 90)
    }()
    let xy270 = {
        getXYFor(angle: 270, radius: 90)
    }()
    
    //112.5 -> 292.5
    let xy1125 = {
        getXYFor(angle: 112.5, radius: 90)
    }()
    let xy2925 = {
        getXYFor(angle: 292.5, radius: 90)
    }()
    
    //135 -> 315
    let xy135 = {
        getXYFor(angle: 135, radius: 90)
    }()
    let xy315 = {
        getXYFor(angle: 315, radius: 90)
    }()
    
    //152.5 -> 337.5
    let xy1575 = {
        getXYFor(angle: 157.5, radius: 90)
    }()
    let xy3375 = {
        getXYFor(angle: 337.5, radius: 90)
    }()
    
    
    var body: some View {
        ZStack{
            Circle()
                .fill(circleColor)
                .frame(width: 20, height: 20, alignment: .center)
                .offset(x: animate1 ? xy0.x : xy180.x, y: animate1 ? xy0.y : xy180.y)
                .animation(.easeInOut(duration: 1.2))
            
            Circle()
                .fill(circleColor)
                .frame(width: 20, height: 20, alignment: .center)
                .offset(x: animate2 ? xy225.x : xy2025.x, y: animate2 ? xy225.y : xy2025.y)
                .animation(.easeInOut(duration: 1.2))


            Circle()
                .fill(circleColor)
                .frame(width: 20, height: 20, alignment: .center)
                .offset(x: animate3 ? xy45.x : _xy225.x, y: animate3 ? xy45.y : _xy225.y)
                .animation(.easeInOut(duration: 1.2))
            
            Circle()
                .fill(circleColor)
                .frame(width: 20, height: 20, alignment: .center)
                .offset(x: animate4 ? xy775.x : xy2475.x, y: animate4 ? xy775.y : xy2475.y)
                .animation(.easeInOut(duration: 1.2))
            
            Circle()
                .fill(circleColor)
                .frame(width: 20, height: 20, alignment: .center)
                .offset(x: animate5 ? xy90.x : xy270.x, y: animate5 ? xy90.y : xy270.y)
                .animation(.easeInOut(duration: 1.2))
            
            Circle()
                .fill(circleColor)
                .frame(width: 20, height: 20, alignment: .center)
                .offset(x: animate6 ? xy1125.x : xy2925.x, y: animate6 ? xy1125.y : xy2925.y)
                .animation(.easeInOut(duration: 1.2))
            
            Circle()
                .fill(circleColor)
                .frame(width: 20, height: 20, alignment: .center)
                .offset(x: animate7 ? xy135.x : xy315.x, y: animate7 ? xy135.y : xy315.y)
                .animation(.easeInOut(duration: 1.2))
            
            Circle()
                .fill(circleColor)
                .frame(width: 20, height: 20, alignment: .center)
                .offset(x: animate8 ? xy1575.x : xy3375.x, y: animate8 ? xy1575.y : xy3375.y)
                .animation(.easeInOut(duration: 1.2))
            
        }
        .frame(width: 200, height: 200, alignment: .center)
        .background(Color.gray.opacity(0.2))
        .clipShape(Circle())
        .onAppear{
            Timer.scheduledTimer(withTimeInterval: 0.15, repeats: true) { (_) in
                if timerCount % 8 == 0 {
                    animate1.toggle()
                }else if timerCount % 8 == 1 {
                    animate2.toggle()
                }
                else if timerCount % 8 == 2 {
                    animate3.toggle()
                }
                else if timerCount % 8 == 3 {
                    animate4.toggle()
                }
                else if timerCount % 8 == 4 {
                    animate5.toggle()
                }
                else if timerCount % 8 == 5 {
                    animate6.toggle()
                }
                else if timerCount % 8 == 6 {
                    animate7.toggle()
                }
                else if timerCount % 8 == 7 {
                    animate8.toggle()
                }

                timerCount += 1
                circleColor = Color.blue.opacity(.random(in: 0.2...1))
            }.fire()
        }
        
    }
}

/// Description
/// - Parameters:
///   - angle: Angle in degrees
///   - radius: radius of the circle
/// - Returns: (x,y) co-ordinates
func getXYFor(angle : Double, radius: Double) -> (x: CGFloat, y: CGFloat) {
    
    let x : CGFloat = CGFloat(round(radius * cos(angle * .pi / 180) * 1000)/1000)
    let y : CGFloat = CGFloat(round(radius * sin(angle * .pi / 180) * 1000)/1000)
    
    return (x,y)
}


struct CirclesLoading_Previews: PreviewProvider {
    static var previews: some View {
        CirclesLoading()
    }
}
