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
                    .customTitle("NEW VALUE")
            }
        }
        .onPreferenceChange(CustomTitlePreferenceKey.self) { value in
            self.text = value
        }
    }
}

extension View {
    func customTitle(_ text: String) -> some View {
        preference(key: CustomTitlePreferenceKey.self,value: text)    }
}

struct PreferenceKeyBootcamp_Previews: PreviewProvider {
    static var previews: some View {
            PreferenceKeyBootcamp()
    }
}

struct SecondaryView: View {
    
    let text: String
    @State private var newValue: String = ""
    
    var body: some View {
        Text(text)
            .onAppear(perform: getDataFromDatabase )
            .customTitle(newValue)
    }
    
    func getDataFromDatabase() {
        //download
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            self.newValue = "NEW VALUE FROM DATABASE"
        }
    }
    
}

struct CustomTitlePreferenceKey: PreferenceKey {
    static var defaultValue: String = ""
    
    static func reduce(value: inout String, nextValue: () -> String) {
        value = nextValue()
    }
    
}
