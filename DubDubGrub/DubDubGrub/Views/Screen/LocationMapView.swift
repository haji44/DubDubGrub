//
//  LocationMapView.swift
//  DubDubGrub
//
//  Created by kitano hajime on 2022/02/15.
//

import SwiftUI
import MapKit

struct LocationMapView: View {
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 37.331516,
                                                                                  longitude: -121.891054),
                                                   // smaller delta values corresponding to a higher zoom level.
                                                   span: MKCoordinateSpan(latitudeDelta: 0.01,
                                                                          longitudeDelta: 0.01))
    
    var body: some View {
        ZStack {
            Map(coordinateRegion: $region)
                .ignoresSafeArea()
            VStack {
                HStack {
                    Image("ddg-map-logo")
                        .resizable()
                        .scaledToFit()
                    .frame(height: 100)
                    Spacer()
                } //: HSTACK
                Spacer()
            }//: VSTACK
        }// ZSTACK
    }
}

struct LocationMapView_Previews: PreviewProvider {
    static var previews: some View {
        LocationMapView()
    }
}
