//
//  AppTabView.swift
//  DubDubGrub
//
//  Created by kitano hajime on 2022/02/15.
//

import SwiftUI


struct AppTabView: View {
    
    let gradient = LinearGradient(colors: [.blue.opacity(0.3), .green.opacity(0.5)],
                                  startPoint: .topLeading,
                                  endPoint: .bottomTrailing)
    
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
        } //: TabView
        .onAppear {
            let appearance = UITabBarAppearance()
            appearance.backgroundEffect = UIBlurEffect(style: .systemUltraThinMaterial)
            appearance.backgroundColor = UIColor.systemBackground.withAlphaComponent(0.03)
            // Use this appearance when scrolling behind the TabView:
            UITabBar.appearance().standardAppearance = appearance
            // Use this appearance when scrolled all the way up:
            UITabBar.appearance().scrollEdgeAppearance = appearance
        }
    }
}



struct AppTabView_Previews: PreviewProvider {
    static var previews: some View {
        AppTabView()
    }
}
