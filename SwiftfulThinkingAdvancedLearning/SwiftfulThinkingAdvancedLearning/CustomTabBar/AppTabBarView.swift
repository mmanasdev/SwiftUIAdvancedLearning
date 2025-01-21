//
//  AppTabBarView.swift
//  SwiftfulThinkingAdvancedLearning
//
//  Created by Miguel Mañas Alvarez on 21/1/25.
//

import SwiftUI

//Generics
//ViewBuilder
//PreferenceKey
//MatchedGeometryEffect

struct AppTabBarView: View {
    
    @State private var selection: String = "home"
    
    var body: some View {
        TabView(selection: $selection) {
            Color.red
                .tabItem {
                Image(systemName: "house")
                Text("Home")
            }
            
            Color.blue
                .tabItem {
                Image(systemName: "heart")
                Text("Favorites")
            }
            
            Color.orange
                .tabItem {
                Image(systemName: "person")
                Text("Profile")
            }
        }
    }
}

struct AppTabBarView_Previews: PreviewProvider {
    static var previews: some View {
        AppTabBarView()
    }
}
