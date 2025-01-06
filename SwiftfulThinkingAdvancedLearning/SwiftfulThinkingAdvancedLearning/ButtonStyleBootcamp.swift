//
//  ButtonStyleBootcamp.swift
//  SwiftfulThinkingAdvancedLearning
//
//  Created by Miguel Mañas Alvarez on 5/1/25.
//

import SwiftUI


struct PressableButtonStyle: ButtonStyle {
    
    let scaleAmount: CGFloat
    
    init(scaleAmount: CGFloat = 0.9) {
        self.scaleAmount = scaleAmount
    }
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .scaleEffect(configuration.isPressed ? scaleAmount : 1.0)
//            .brightness(configuration.isPressed ? 0.05 : 0)
            .opacity(configuration.isPressed ? 0.9 : 1.0)
    }
}

extension View {
    func withPressableStyle(scaleAmount: CGFloat = 0.9) -> some View {
        buttonStyle(PressableButtonStyle(scaleAmount: scaleAmount))
    }
}

struct ButtonStyleBootcamp: View {
    var body: some View {
        Button {
            
        } label: {
            Text("Click Me")
                .withDefaultButtonFormatting()
        }
//        .buttonStyle(PlainButtonStyle())
//        .buttonStyle(DefaultButtonStyle())
//        .buttonStyle(PressableButtonStyle(scaleAmount: 0.7))
//        .withPressableStyle()
        .withPressableStyle(scaleAmount: 0.6)
        .padding(40)

    }
}

struct ButtonStyleBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStyleBootcamp()
    }
}
