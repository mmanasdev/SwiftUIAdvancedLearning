//
//  PreferenceKeyBootcamp.swift
//  SwiftfulThinkingAdvancedLearning
//
//  Created by Miguel Mañas Alvarez on 16/1/25.
//

import SwiftUI

struct PreferenceKeyBootcamp: View {
    
    @State private var text: String = "Hello, World!"
    
    var body: some View {
        NavigationView {
            VStack {
                SecondaryView(text: text)
                    .navigationTitle("NavigationTitle")
            }
        }
    }
}

struct PreferenceKeyBootcamp_Previews: PreviewProvider {
    static var previews: some View {
            PreferenceKeyBootcamp()
    }
}

struct SecondaryView: View {
    
    let text: String
    
    var body: some View {
        Text(text)
    }
    
}
