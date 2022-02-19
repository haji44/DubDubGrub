//
//  LocatioCell.swift
//  DubDubGrub
//
//  Created by kitano hajime on 2022/02/17.
//

import SwiftUI

struct LocationCell: View {
    
    var location: DDGLocation
    
    var body: some View {
        HStack {
            Image("default-square-asset")
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .clipShape(Circle()) // cliped image like circle
                .padding(.vertical, 8)
            
            VStack {
                Text(location.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .lineLimit(1) // limit the text line
                    .minimumScaleFactor(0.75)

                HStack(spacing: 10) {
                    AvatorView(size: 35)
                    AvatorView(size: 35)
                    AvatorView(size: 35)
                    AvatorView(size: 35)

                    Spacer()
                } //: HSTACK
                .padding(.leading)
            }//: VSTACK
        }//: HSTACK
    }
}

struct LocatioCell_Previews: PreviewProvider {
    static var previews: some View {
        LocationCell(location: DDGLocation(record: MockData.location))
    }
}
