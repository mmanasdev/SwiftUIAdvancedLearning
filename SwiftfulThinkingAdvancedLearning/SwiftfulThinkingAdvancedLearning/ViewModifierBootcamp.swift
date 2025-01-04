//
//  ViewModifierBootcamp.swift
//  SwiftfulThinkingAdvancedLearning
//
//  Created by Miguel Mañas Alvarez on 4/1/25.
//

import SwiftUI

struct DefaultButtonViewModifier: ViewModifier {
    
    let backgroundColor: Color
    
    func body(content: Content) -> some View {
        content
            .foregroundColor(.white)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(backgroundColor)
            .cornerRadius(10)
            .shadow(radius: 10)
    }
}

extension View {
    func withDefaultButtonFormatting(backgroundColor: Color = .blue) -> some View {
        modifier(DefaultButtonViewModifier(backgroundColor: backgroundColor))
    }
}

struct ViewModifierBootcamp: View {
    var body: some View {
        VStack(spacing: 10) {
            
            Text("Hello, World!")
                .font(.headline)
                .modifier(DefaultButtonViewModifier(backgroundColor: .blue))
//                .font(.headline)
//                .foregroundColor(.white)
//                .frame(height: 55)
//                .frame(maxWidth: .infinity)
//                .background(Color.blue)
//                .cornerRadius(10)
//                .shadow(radius: 10)
//                .padding()
            
            Text("Hello, everyone!!")
                .font(.subheadline)
                .modifier(DefaultButtonViewModifier(backgroundColor: .pink))
            
            Text("Hello!!!")
                .font(.title)
                .modifier(DefaultButtonViewModifier(backgroundColor: .orange))
            
            Text("Hello, World!")
                .withDefaultButtonFormatting(backgroundColor: .green)
            
            Text("Hello, World!")
                .withDefaultButtonFormatting()
            
        }
        .padding()
    }
}

struct ViewModifierBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ViewModifierBootcamp()
    }
}
