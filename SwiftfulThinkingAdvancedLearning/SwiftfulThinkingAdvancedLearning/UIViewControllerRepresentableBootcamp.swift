//
//  UIViewControllerRepresentableBootcamp.swift
//  SwiftfulThinkingAdvancedLearning
//
//  Created by Miguel Mañas Alvarez on 30/1/25.
//

import SwiftUI

struct UIViewControllerRepresentableBootcamp: View {
    
    @State private var showSreen: Bool = false
    
    var body: some View {
        VStack {
            Text("hi")
            Button {
                showSreen.toggle()
            } label: {
                Text("Click here")
            }
            .sheet(isPresented: $showSreen) {
                BasicUIViewControllerRepresentable(labelText: "New Text here")
            }

        }
    }
}

struct UIViewControllerRepresentableBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        UIViewControllerRepresentableBootcamp()
    }
}

struct BasicUIViewControllerRepresentable: UIViewControllerRepresentable {
    
    let labelText: String
    
    func makeUIViewController(context: Context) -> some UIViewController {
        let vc = UIViewController()
        vc.view.backgroundColor = .blue
        
        let label = UILabel()
        label.text = "Hello, world"
        label.textColor = UIColor.white
        
        vc.view.addSubview(label)
        label.frame = vc.view.frame
        return vc
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
}
