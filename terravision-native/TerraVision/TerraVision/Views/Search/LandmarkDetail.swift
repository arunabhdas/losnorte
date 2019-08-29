//
//  LandmarkDetail.swift
//  TerraVision
//
//

import SwiftUI

struct LandmarkDetail: View {
    var body: some View {
        NavigationView {
            VStack {
                MapView()
                    .frame(height: 1300)
                CircleImage()
                    .offset(y: 0)
                    .padding(.top, 200)
                
                VStack(alignment: .leading) {
                    Text("Easy access to Earth observation data")
                        .font(.title)
                    
                    HStack(alignment: .top) {
                        Text("Integrate Earth observation data into your application in minutes.")
                            .font(.subheadline)
                        Spacer()
                        Text("California")
                            .font(.subheadline)
                    }
                }
                .padding()
                
                Spacer()
            }.navigationBarTitle("Search")
        }
        
    }
}

struct LandmarkDetail_Preview: PreviewProvider {
    static var previews: some View {
        LandmarkDetail()
    }
}


