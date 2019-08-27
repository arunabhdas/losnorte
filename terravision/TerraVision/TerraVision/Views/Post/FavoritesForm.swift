//
//  FavoritesForm.swift
//  TerraVision
//
//

import SwiftUI

struct FavoritesForm : View {
    var body: some View {
        NavigationView {
            List {
                VStack {
                    MapView()
                        .edgesIgnoringSafeArea(.top)
                        .frame(height: 300)
                    
                    CircleImage()
                        .offset(y: -130)
                        .padding(.bottom, -130)
                        .padding()
                }
            }.navigationBarTitle("More")
        }
    }
}

#if DEBUG
struct FavoritesForm_Previews : PreviewProvider {
    static var previews: some View {
        FavoritesForm()
    }
}
#endif
