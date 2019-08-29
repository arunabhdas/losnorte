//
//  ContentView.swift
//  TerraVision
//
//  Created by Anonymous on 8/22/19.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 1
    var body: some View {
        TabView(selection: $selection) {
            LandmarkDetail()
                .tabItem {
                    VStack {
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                    }
            }.tag(1)
            FeedForm()
                .tabItem {
                    VStack {
                        Image(systemName: "rectangle.stack.fill")
                        Text("Places")
                    }
            }.tag(2)
            SearchForm()
                .tabItem {
                    VStack {
                        Image(systemName: "house")
                        Text("Home")
                    }
            }.tag(3)
            FavoritesForm()
                .tabItem {
                    VStack {
                        Image(systemName: "person.2.square.stack")
                        Text("Post")
                    }
            }.tag(4)
            MoreContentView()
                .tabItem {
                    VStack {
                        Image(systemName: "ellipsis")
                        Text("More")
                    }
            }.tag(5)
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HomeContentView: View {
    var body: some View {
        NavigationView {
            List(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                Text("HomeContentView")
            }.navigationBarTitle("Home")
        }
    }
}



struct SearchContentView: View {
    var body: some View {
        NavigationView {
            Text("Search")
        }
    }
}




