//
//  FabIconAnimation.swift
//  SwiftUIAnimations
//
//  Created by jyothish.johnson on 05/03/21.
//

import SwiftUI

struct FabIconAnimation: View {
    
    @State var change = false
    var body: some View {
        
        VStack{
            Spacer()
            FabButton()
            Spacer()
        }
    }
}

struct FabIconAnimation_Previews: PreviewProvider {
    static var previews: some View {
        FabIconAnimation()
    }
}

