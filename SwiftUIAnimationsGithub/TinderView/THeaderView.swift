//
//  THeaderView.swift
//  SwiftUIAnimations
//
//  Created by jyothish.johnson on 18/04/21.
//

import SwiftUI

struct THeaderView: View {
    static let tGray = "ced4da"
    var body: some View {
        HStack{
            Image(systemName: "person.fill")
                .resizable()
                .frame(width: 32, height: 32)
                .foregroundColor(Color(hex: THeaderView.tGray))
            Spacer()
            Image("tinder")
                .resizable()
                .frame(width: 32, height: 32)
            Spacer()
            Image(systemName: "quote.bubble.fill")
                .resizable()
                .frame(width: 32, height: 32)
                .foregroundColor(Color(hex: THeaderView.tGray))
        }
        .padding()
    }
}

struct THeaderView_Previews: PreviewProvider {
    static var previews: some View {
        THeaderView()
            .previewLayout(.sizeThatFits)
    }
}
