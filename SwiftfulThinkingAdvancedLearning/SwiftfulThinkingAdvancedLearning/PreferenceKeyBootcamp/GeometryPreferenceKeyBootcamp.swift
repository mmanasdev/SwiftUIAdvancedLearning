//
//  GeometryPreferenceKeyBootcamp.swift
//  SwiftfulThinkingAdvancedLearning
//
//  Created by Miguel Mañas Alvarez on 18/1/25.
//

import SwiftUI

struct GeometryPreferenceKeyBootcamp: View {
    var body: some View {
        VStack {
            Text("Hello, world")
                .background(Color.blue)
            Spacer()
            HStack {
                Rectangle()
                Rectangle()
                Rectangle()
            }
            .frame(height: 55)
        }
    }
}

struct GeometryPreferenceKeyBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GeometryPreferenceKeyBootcamp()
    }
}
