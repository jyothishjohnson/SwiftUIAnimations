//
//  TProfileDescView.swift
//  SwiftUIAnimations
//
//  Created by jyothish.johnson on 18/04/21.
//

import SwiftUI

struct TProfileDescView: View {
    
    let profile : TProfile!
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4){
            Spacer()
            HStack() {
                Text(profile.name)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                Text("\(profile.age)")
                    .fontWeight(.regular)
                    .foregroundColor(.white)
                    .font(.title)
                ZStack {
                    Color.white
                        .frame(width: 10, height: 10)
                    Image("verified")
                        .resizable()
                        
                        .foregroundColor(.blue)
                }
                .frame(width: 24, height: 24)
                Spacer()
            }
            HStack(spacing: 10) {
                Image("suitcase")
                    .resizable()
                    .frame(width: 16, height: 16)
                    .foregroundColor(.white)
                Text(profile.occupation)
                    .font(.title3)
                    .fontWeight(.regular)
                    .foregroundColor(.white)
            }
            HStack(spacing: 10) {
                Image(systemName: "mappin.and.ellipse")
                    .resizable()
                    .frame(width: 16, height: 16)
                    .foregroundColor(.white)
                Text(profile.location)
                    .font(.title3)
                    .fontWeight(.regular)
                    .foregroundColor(.white)
            }
            
        }
        .padding(.bottom)
        .padding(.horizontal)
    }
}


struct TProfileDescView_Previews: PreviewProvider {
    static var previews: some View {
        TinderHomeView()
    }
}
