//
//  GenericsBootcamp.swift
//  SwiftfulThinkingAdvancedLearning
//
//  Created by Miguel Mañas Alvarez on 13/1/25.
//

import SwiftUI

struct StringModel {
    let info: String?
    func removeInfo() -> StringModel {
        StringModel(info: nil)
    }
}

struct BoolModel {
    let info: Bool?
    func removeInfo() -> BoolModel {
        BoolModel(info: nil)
    }
}

struct GenericModel<T> {
    let info: T?
    func removeInfo() -> GenericModel {
        GenericModel(info: nil)
    }
}

struct GenericView<T: View>: View {
    
    let content: T
    let title: String
    
    var body: some View {
        Text(title)
        content
    }
}

class GenericsViewModel: ObservableObject {
    @Published var stringModel = StringModel(info: "Hello, world!")
    @Published var boolModel = BoolModel(info: true)
    
    @Published var genericStringModel = GenericModel(info: "Hello, world")
    @Published var genericBoolModel = GenericModel(info: true)
    
    func removeData() {
        
        stringModel = stringModel.removeInfo()
        boolModel = boolModel.removeInfo()
        
        genericStringModel = genericStringModel.removeInfo()
        genericBoolModel = genericBoolModel.removeInfo()
    }
}

struct GenericsBootcamp: View {
    
    @StateObject private var vm = GenericsViewModel()
    
    var body: some View {
        VStack {
            
            GenericView(content: Text("Custom Content!"), title: "New View: title")
            
            Text(vm.stringModel.info ?? "no data")
            Text(vm.boolModel.info?.description ?? "no data")
            
            Text(vm.genericStringModel.info ?? "no data")
            Text(vm.genericBoolModel.info?.description ?? "no data")
        }
        .onTapGesture {
            vm.removeData()
    }
    }
}

struct GenericsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GenericsBootcamp()
    }
}
