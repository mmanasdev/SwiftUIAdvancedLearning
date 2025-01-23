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
    @State private var tabSelection: TabBarItem = .home
    
    var body: some View {
        //defaultTabView
        CustomTabBarContainerView(selection: $tabSelection) {
            Color.blue
                .tabBarItem(tab: .home, selection: $tabSelection)
            
            Color.red
                .tabBarItem(tab: .favorite, selection: $tabSelection)
            
            Color.green
                .tabBarItem(tab: .profile, selection: $tabSelection)
            
            Color.orange
                .tabBarItem(tab: .messages, selection: $tabSelection)
        }
    }
}

struct AppTabBarView_Previews: PreviewProvider {
    
    static let tabs: [TabBarItem] = [.home, .favorite, .profile]
    
    static var previews: some View {
        AppTabBarView()
    }
}

extension AppTabBarView {
    private var defaultTabView: some View {
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
