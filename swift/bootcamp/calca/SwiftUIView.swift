//
//  SwiftUIView.swift
//  calca
//
//  Created by Артур on 31.07.2021.
//

import SwiftUI

struct SwiftUIView: View {
    @State var arrae = ["Apple", "Orange", "Grape", "Some SOM"]
    @State var text = ""
    var body: some View {
        NavigationView{
            List{
                ForEach(arrae, id: \.self) { fruit in
                    Text(fruit)
                }.onDelete(perform: delete)
                .onMove(perform: moving)
            }
            .navigationBarItems(leading: EditButton(), trailing: Button(action: {
                adding(fruit: text)
            }, label: {
                Text("Add a Fruit")
            }))
            .navigationTitle("Fruits")
            
        }
    }
    func delete(index: IndexSet) {
        arrae.remove(atOffsets: index)
    }
    func moving(indice: IndexSet, newOffset: Int){
        arrae.move(fromOffsets: indice, toOffset: newOffset)
    }
    func adding(fruit: String) {
        arrae.append(fruit)
    }

}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
