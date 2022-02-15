//
//  AppTabView.swift
//  DubDubGrub
//
//  Created by kitano hajime on 2022/02/15.
//

import SwiftUI

struct AppTabView: View {
    var body: some View {
        TabView {
            LocationMapView()
                .tabItem {
                    Label("Map", systemImage: "location.north.circle.fill")
                }
            LocationListView()
                .tabItem {
                    Label("List", systemImage: "line.3.horizontal.circle.fill")
                }
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.circle.fill")
                }
        }
    }
}

struct AppTabView_Previews: PreviewProvider {
    static var previews: some View {
        AppTabView()
    }
}
