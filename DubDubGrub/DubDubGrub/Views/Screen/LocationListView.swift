//
//  LocationListView.swift
//  DubDubGrub
//
//  Created by kitano hajime on 2022/02/15.
//

import SwiftUI

struct LocationListView: View {
    
    // MARK: PROPERTY
    @State private var locations: [DDGLocation] = [DDGLocation(record: MockData.location)]
    
    // MARK: BODY
    var body: some View {
        NavigationView {
            List {
                ForEach(locations, id: \.ckRecordID) { location in
                    // navigation detail view by selecting on that
                    NavigationLink(destination: LocationDetailView(location: location)) {
                        LocationCell(location: location)
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
