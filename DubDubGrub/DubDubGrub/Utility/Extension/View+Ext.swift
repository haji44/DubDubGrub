//
//  View+Ext.swift
//  DubDubGrub
//
//  Created by kitano hajime on 2022/02/17.
//

import SwiftUI

// extension is useful for wrapping acutal implementation
extension View {
    // to make sure the return view object
    func profileNameStyle() -> some View {
        self.modifier(ProFileNameText())
    }
}
