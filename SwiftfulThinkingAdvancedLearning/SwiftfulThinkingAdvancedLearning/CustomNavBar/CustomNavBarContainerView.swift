//
//  CustomNavBarContainerView.swift
//  SwiftfulThinkingAdvancedLearning
//
//  Created by Miguel Mañas Alvarez on 25/1/25.
//

import SwiftUI

struct CustomNavBarContainerView<Content: View>: View {
    
    let content: Content
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    var body: some View {
        VStack(spacing: 0) {
            CustomNavBarView()
            content
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}

struct CustomNavBarContainerView_Previews: PreviewProvider {
    static var previews: some View {
        CustomNavBarContainerView {
            ZStack {
                Color.green.ignoresSafeArea()
                
                Text("Hello, world!")
                    .foregroundColor(.white)
            }
        }
    }
}
