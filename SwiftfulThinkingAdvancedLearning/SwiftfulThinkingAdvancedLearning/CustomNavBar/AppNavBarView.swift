//
//  AppNavBarView.swift
//  SwiftfulThinkingAdvancedLearning
//
//  Created by Miguel Mañas Alvarez on 24/1/25.
//

import SwiftUI

struct AppNavBarView: View {
    var body: some View {
        //defaultNavView
        
        CustomNavView {
            ZStack {
                Color.orange.ignoresSafeArea()
                
                CustomNavLink(destination:
                                Text("Destination")
                    .customNavigationTitle("Second Screen")
                    .customNavigationSubtitle("Subtitle should be showing...")
                ) {
                    Text("Navigate")
                }

            }
//            .customNavigationTitle("Custom Title")
//            .customNavigationBackButtonHidden(true)
            .customNavBarItems(title:"Custom Title", subtitle: "subbb", backButtonHidden: true)
        }
    }
}

struct AppNavBarView_Previews: PreviewProvider {
    static var previews: some View {
        AppNavBarView()
    }
}

extension AppNavBarView {
    private var defaultNavView: some View {
        NavigationView {
            ZStack {
                Color.green.ignoresSafeArea()
                
                NavigationLink(
                    destination:
                                Text("Destination")
                    .navigationTitle("Title 2")
                    .navigationBarBackButtonHidden(false)
                                ,label: {
                    Text("Navigate")
                })
            }
            .navigationTitle("Nav Title here")
        }
    }
}
