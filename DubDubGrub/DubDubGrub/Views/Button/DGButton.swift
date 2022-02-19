//
//  DGButton.swift
//  DubDubGrub
//
//  Created by kitano hajime on 2022/02/17.
//

import SwiftUI

struct DGButton: View {
    
    var tilte: String
    
    var body: some View {
        ZStack {
            Text(tilte)
                .bold()
                .foregroundColor(.white)
                .frame(width: 280, height: 44)
                .background(Color.brandPrimary)
                .cornerRadius(10)
        }
    }
}

struct DGButton_Previews: PreviewProvider {
    static var previews: some View {
        DGButton(tilte: "Title Button")
    }
}
