//
//  AvatarView.swift
//  DubDubGrub
//
//  Created by kitano hajime on 2022/02/17.
//

import SwiftUI

struct AvatorView: View {
    
    var size: CGFloat
    
    var body: some View {
        Image("default-avatar")
            .resizable()
            .scaledToFit()
            .frame(width: size , height: size)
            .clipShape(Circle())
    }
}

struct AvatarView_Previews: PreviewProvider {
    static var previews: some View {
        AvatorView(size: 60)
    }
}
