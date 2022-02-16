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
    
    // MARK: BODY
    var body: some View {
        VStack {
            // MARK: HEADER
            VStack {
                Image("default-banner-asset")
                    .resizable()
                    .scaledToFit()
                
                HStack {
                    Label("123 Main Stree", systemImage: SystemName.mapPin.rawValue)
                        .font(.caption)
                        .foregroundColor(.secondary)
                    Spacer()
                }//HSTACK
                .padding(.leading)
            }//: HEADER
            
            Spacer()
            
            Text("testestestsetre tjhskjldk;j ;dlj;a;lk dkjlsa;jdfkaj;kjfkjkjkjkj;ja;lf")
                .lineLimit(3)
                .minimumScaleFactor(0.75)
                .frame(height: 70)
                .padding(.horizontal)
            
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
                    Link(destination: URL(string: "https://github.com/haji44")!) {
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
                .font(.title)
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
        .navigationTitle("Location Name")
        .navigationBarTitleDisplayMode(.inline)
    }//: BODY
}

struct LocationDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
        LocationDetailView()
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
