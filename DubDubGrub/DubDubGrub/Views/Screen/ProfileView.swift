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
                Color(uiColor: .secondarySystemBackground)
                    .frame(height: 130)
                    .cornerRadius(12)
                    .padding(.horizontal)
                
                HStack {
                    ZStack {
                        AvatorView(size: 90)
                        Image(systemName: SystemName.pencil.rawValue)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 14, height: 14)
                            .foregroundColor(.white)
                            .offset(y: 32)
                    }//: ZSTACK
                    .padding(.leading, 12)
                    
                    VStack {
                        TextField("First Name", text: $firstName)
                            .font(.system(size: 32, weight: .bold))
                            .lineLimit(1)
                            .minimumScaleFactor(0.75)
                        TextField("Last Name", text: $lastName)
                            .font(.system(size: 32, weight: .bold))
                            .lineLimit(1)
                            .minimumScaleFactor(0.75)
                        TextField("Last Name", text: $companyName)
                    }//: VSTACK
                    .padding(.trailing, 16) // constrain the right space of screen
                    
                    Spacer()
                }//: VSTACK
                .padding(.leading)
            }//: TOP
            
            // MARK: CENTER
            HStack {
                Text("Bio ")
                    .font(.callout)
                    .foregroundColor(.gray)
                +
                Text("\(100 - bio.count) ")
                    .bold()
                    .font(.callout)
                    .foregroundColor(bio.count <= 100 ? .brandPrimary : Color(.systemPink))
                +
                Text("char remoan")
                    .font(.callout)
                    .foregroundColor(Color.gray)
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
                DGButton()
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

struct DGButton: View {
    var body: some View {
        ZStack {
            Text("Save Profile")
                .bold()
                .foregroundColor(.white)
                .frame(width: 280, height: 44)
                .background(Color.brandPrimary)
                .cornerRadius(10)
        }
    }
}
