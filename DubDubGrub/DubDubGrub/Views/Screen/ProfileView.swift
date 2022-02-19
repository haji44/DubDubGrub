//
//  ProfileView.swift
//  DubDubGrub
//
//  Created by kitano hajime on 2022/02/15.
//

import SwiftUI

struct ProfileView: View {
    // MARK: PROPERTY
    @State private var firstName    = ""
    @State private var lastName     = ""
    @State private var companyName  = ""
    @State private var bio          = ""
    
    // MARK: BODY
    var body: some View {
        VStack {
            // MARK: TOP
            ZStack {
                NameBackGroundView()
                
                HStack {
                    ZStack {
                        AvatorView(size: 90)
                        EditImage()
                    }//: ZSTACK
                    .padding(.leading, 12)
                    
                    VStack {
                        TextField("First Name", text: $firstName)
                            .profileNameStyle()
                        TextField("Last Name", text: $lastName)
                            .profileNameStyle()
                        TextField("Last Name", text: $companyName)
                    }//: VSTACK
                    .padding(.trailing, 16) // constrain the right space of screen
                    
                    Spacer()
                }//: VSTACK
                .padding(.leading)
            }//: TOP
            
            // MARK: CENTER
            HStack {
                CharacterRemainView(currentCount: 3)
                Spacer()
                
                ZStack {
                    Rectangle()
                        .frame(width: 130, height: 40)
                        .foregroundColor(.red)
                        .cornerRadius(12)
                    Label("Check Out", systemImage: SystemName.mapPin.rawValue)
                        .frame(width: 130, height: 40)
                        .foregroundColor(.white)
                }//: ZSTACK
            }//: CENTER
            .padding(.horizontal)
            
            // MARK: BOTTOM
            VStack {
                TextEditor(text: $bio)
                    .frame(height: 100)
                    .overlay(RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.secondary, lineWidth: 1))
            }
            .padding(.horizontal)
            
            Spacer()
            
            // MARK: BUTTON
            Button {
                
            } label: {
                DGButton(tilte: "Save Profile")
            }
            .padding(.bottom)
        }//: VSSTACK
        .navigationTitle("Profile")
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ProfileView()
        }
    }
}

// MARK: SMALL VIEW
struct NameBackGroundView: View {
    var body: some View {
        Color(uiColor: .secondarySystemBackground)
            .frame(height: 130)
            .cornerRadius(12)
            .padding(.horizontal)
    }
}

struct EditImage: View {
    var body: some View {
        Image(systemName: SystemName.pencil.rawValue)
            .resizable()
            .scaledToFit()
            .frame(width: 14, height: 14)
            .foregroundColor(.white)
            .offset(y: 32)
    }
}

struct CharacterRemainView: View {
    
    var currentCount: Int
    
    var body: some View {
        Text("Bio ")
            .font(.callout)
            .foregroundColor(.gray)
        +
        Text("\(100 - currentCount) ")
            .bold()
            .font(.callout)
            .foregroundColor(currentCount <= 100 ? .brandPrimary : Color(.systemPink))
        +
        Text("char remoan")
            .font(.callout)
            .foregroundColor(Color.gray)
    }
}
