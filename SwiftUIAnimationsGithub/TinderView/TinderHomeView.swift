//
//  TinderHomeView.swift
//  SwiftUIAnimations
//
//  Created by jyothish.johnson on 18/04/21.
//

import SwiftUI

struct TinderHomeView: View {
    
    let profiles = TProfile.profiles
    var body: some View {
        VStack {
            THeaderView()
            ZStack {
                ForEach(profiles.indices) { index in
                    DragActionView(profile: profiles[index])
                }
            }
            TBottomTabView()
            Spacer()
        }
        .edgesIgnoringSafeArea([.bottom,.leading,.trailing])
    }
}

struct TinderHomeView_Previews: PreviewProvider {
    static var previews: some View {
        TinderHomeView()
    }
}

struct TProfile: Identifiable {
    let id = UUID()
    let name: String
    let age: Int
    let verified: Bool
    let occupation: String
    let location: String
    let distance : Int
    let imageName : String
    let image : Image!

    static let profiles = [
        TProfile(name: "Rachel", age: 24, verified: true, occupation: "Athlete", location: "SunnyVale", distance: 2, imageName: "1", image: ImageCompressor.compressedImage(imageName: "1", frame: CGSize(width: 372, height: 600))!),
        TProfile(name: "Harvey", age: 30, verified: true, occupation: "Athlete", location: "Florida", distance: 2, imageName: "2", image: ImageCompressor.compressedImage(imageName: "2", frame: CGSize(width: 372, height: 600))!),
        TProfile(name: "Jamie", age: 29, verified: true, occupation: "Athlete", location: "Newyork", distance: 2, imageName: "3", image: ImageCompressor.compressedImage(imageName: "3", frame: CGSize(width: 372, height: 600))!),
        TProfile(name: "Amy", age: 35, verified: true, occupation: "Athlete", location: "Munich", distance: 2, imageName: "4", image: ImageCompressor.compressedImage(imageName: "4", frame: CGSize(width: 372, height: 600))!),
        TProfile(name: "Yusuf", age: 23, verified: true, occupation: "Athlete", location: "Wales", distance: 2, imageName: "5", image: ImageCompressor.compressedImage(imageName: "5", frame: CGSize(width: 372, height: 600))!),
        TProfile(name: "Mark", age: 25, verified: true, occupation: "Athlete", location: "Turin", distance: 2, imageName: "6", image: ImageCompressor.compressedImage(imageName: "6", frame: CGSize(width: 372, height: 600))!),
        TProfile(name: "Lara", age: 31, verified: true, occupation: "Athlete", location: "Madrid", distance: 2, imageName: "7", image: ImageCompressor.compressedImage(imageName: "7", frame: CGSize(width: 372, height: 600))!),
        TProfile(name: "Megan", age: 30, verified: true, occupation: "Athlete", location: "Naples", distance: 2, imageName: "8", image: ImageCompressor.compressedImage(imageName: "8", frame: CGSize(width: 372, height: 600))!),
        TProfile(name: "Leo", age: 29, verified: true, occupation: "Athlete", location: "Rome", distance: 2, imageName: "9", image: ImageCompressor.compressedImage(imageName: "9", frame: CGSize(width: 372, height: 600))!),
        TProfile(name: "Isa", age: 28, verified: true, occupation: "Athlete", location: "California", distance: 2, imageName: "10", image: ImageCompressor.compressedImage(imageName: "10", frame: CGSize(width: 372, height: 600))!)
    ]
}

//setup Github
