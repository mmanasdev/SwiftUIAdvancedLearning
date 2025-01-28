//
//  UIViewRepresentableBootcamp.swift
//  SwiftfulThinkingAdvancedLearning
//
//  Created by Miguel Mañas Alvarez on 28/1/25.
//

import SwiftUI

// convert a UIView from UIkit to SwiftUI
struct UIViewRepresentableBootcamp: View {
    
    @State private var text: String = ""
    
    var body: some View {
        VStack {
            Text("Hello, World!")
            TextField("Type here...", text: $text)
        }
    }
}

struct UIViewRepresentableBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        UIViewRepresentableBootcamp()
    }
}

struct BasicUIViewRepresentable: UIViewRepresentable {
    func makeUIView(context: Context) -> some UIView {
        let view = UIView()
        view.backgroundColor = .red
        return view
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
}
