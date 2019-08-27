//
//  SearchForm.swift
//  TerraVision
//
//

import SwiftUI

struct SearchForm : View {
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
            }.navigationBarTitle("Search")
        }
    }
}

#if DEBUG
struct SearchForm_Previews : PreviewProvider {
    static var previews: some View {
        SearchForm()
    }
}
#endif
