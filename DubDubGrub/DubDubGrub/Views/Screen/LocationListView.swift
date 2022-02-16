//
//  LocationListView.swift
//  DubDubGrub
//
//  Created by kitano hajime on 2022/02/15.
//

import SwiftUI

struct LocationListView: View {
    
    // MARK: BODY
    var body: some View {
        NavigationView {
            List {
                ForEach(0..<10) { _ in
                    // navigation detail view by selecting on that
                    NavigationLink(destination: LocationDetailView()) {
                        LocationCell()
                    }//: LINK
                }
            }//: LIST
            .navigationTitle("Grub Spots")
        }//: NAVIGATION
    }//: BODY
}

struct LocationListView_Previews: PreviewProvider {
    static var previews: some View {
        LocationListView()
    }
}

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

struct LocationCell: View {
    var body: some View {
        HStack {
            Image("default-square-asset")
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .clipShape(Circle()) // cliped image like circle
                .padding(.vertical, 8)
            
            VStack {
                Text("Test location Name")
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
