//
//  FeedForm.swift
//  TerraVision
//
//

import SwiftUI

struct Place: Identifiable {
    var id: Int
    let name: String
    let type: String
    let color: Color
    
}

struct FeedForm : View {
    @State var placeList = [
        Place(id: 0, name: "Charmander", type: "Fire", color: .red),
        Place(id: 1, name: "Squirtle", type: "Water", color: .blue),
        Place(id: 2, name: "Bulbasaur", type: "Grass", color: .green),
        Place(id: 3, name: "Pikachu", type: "Electric", color: .yellow),
    ]
    @State var showDetails = true
    var body: some View {
        NavigationView {
            List(placeList) { place in
                HStack {
                    Text(place.name)
                    if self.showDetails {
                        Text(place.type).foregroundColor(place.color)
                    }
                }
            }.navigationBarTitle(Text("Places"))
                .navigationBarItems(
                    leading:
                    Button(
                        action: { self.showDetails.toggle() },
                        label: { Text(self.showDetails ? "Hide" : "Show" )}
                    ),
                    trailing:
                    Button(
                        action: { self.showDetails.toggle() },
                        label: { Text("Add") }
                    )
            )
        }
    }
}
