//
//  MoreContentView.swift
//  TerraVision
//
//

import Foundation
import SwiftUI

struct MoreContentView: View {
    var body: some View {
        NavigationView {
            List(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                Text("MoreContentView")
            }.navigationBarTitle("More")
        }
    }
}
