//
//  Modifier.swift
//  DubDubGrub
//
//  Created by kitano hajime on 2022/02/17.
//

import SwiftUI

// MARK: MODIFIER
struct ProFileNameText: ViewModifier {
    // this code plays an convert role
    func body(content: Content) -> some View {
        content
            .font(.system(size: 32, weight: .bold))
            .lineLimit(1)
            .minimumScaleFactor(0.75)
    }
}
