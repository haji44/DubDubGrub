//
//  LocationDetailView.swift
//  DubDubGrub
//
//  Created by kitano hajime on 2022/02/16.
//

import SwiftUI

struct LocationDetailView: View {
    // MARK: PROPERTY
    let columns: [GridItem] = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    var location: DDGLocation
    
    // MARK: BODY
    var body: some View {
        VStack {
            // MARK: HEADER
            VStack {
                BannerImageView(imageName: "default-banner-asset")
                
                HStack {
                    StreetImageView(address: location.address)
                    Spacer()
                }//HSTACK
                .padding(.leading)
            }//: HEADER
            
//            Spacer()
            
            DescriptionView(text: location.description)
            
            // MARK: CENTER
            ZStack {
                Capsule()
                    .frame(height: 80)
                    .foregroundColor(Color(uiColor: .secondarySystemBackground))
                    .padding()
                HStack(spacing: 18) {
                    Button {
                        
                    } label: {
                        LocationActionButton(color: .brandPrimary, systemName: SystemName.location.rawValue)
                    }//:Button
                    Link(destination: URL(string: location.websiteURL)!) {
                        LocationActionButton(color: .brandPrimary, systemName: SystemName.network.rawValue)
                    }
                    Button {
                        
                    } label: {
                        LocationActionButton(color: .brandPrimary, systemName: SystemName.phone.rawValue)
                    }//:Button
                    Button {
                        
                    } label: {
                        LocationActionButton(color: .red, systemName: SystemName.personX.rawValue)
                    }//:Button
                }//: HSTACK
            }//: CENTER
            
            Spacer()
            
            Text("Who's here?")
                .font(.title2)
                .fontWeight(.heavy)
            
            // MARK: FOOTER
            ScrollView {
                
                LazyVGrid(columns: columns) {
                    ForEach(0..<8) { item in
                        FirstNameAvatarView(firstName: "testname")
                    }
                }//: GRID
            }//: FOOTER
        }//: VSTACK
        .navigationTitle(location.name)
        .navigationBarTitleDisplayMode(.inline)
    }//: BODY
}

struct LocationDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            LocationDetailView(location: DDGLocation(record: MockData.location))
        }
    }
}

struct LocationActionButton: View {
    
    // MARK: PROPERTY
    let color: Color
    let systemName: String
    
    // MARK: BODY
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 65, height: 65)
                .foregroundColor(color)
            
            Image(systemName: systemName)
                .resizable()
                .scaledToFit()
                .frame(width: 25, height: 25)
                .foregroundColor(.white)
        }
    }
}


struct FirstNameAvatarView: View {
    var firstName: String
    
    var body: some View {
        VStack {
            AvatorView(size: 65)
            Text(firstName)
                .bold()
                .lineLimit(1)
                .minimumScaleFactor(0.75)
        }
    }
}

struct BannerImageView: View {

    var imageName: String
    
    var body: some View {
        Image(imageName)
            .resizable()
            .scaledToFit()
    }
}

struct StreetImageView: View {
    
    var address: String
    
    var body: some View {
        Label(address, systemImage: SystemName.mapPin.rawValue)
            .font(.caption)
            .foregroundColor(.secondary)
    }
}

struct DescriptionView: View {
    
    var text: String
    
    var body: some View {
        Text(text)
            .lineLimit(3)
            .minimumScaleFactor(0.75)
            .frame(height: 70)
            .padding(.horizontal, 3)
    }
}
