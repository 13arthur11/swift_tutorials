//
//  ListViewModel.swift
//  anoch
//
//  Created by Артур on 12.08.2021.
//

import Foundation

class ListViewModel: ObservableObject {
    
    @Published var arrae: [ItemModel] = [] {
        didSet{
            saving()
        }
    }
    let itemsInArrae: String = "arraeList"
    
    init() {
        getItems()
    }
    func getItems() {
//        let newItems = [
//            ItemModel(title: "Perdun", isCompleted: true),
//            ItemModel(title: "Nikal", isCompleted: false),
//            ItemModel(title: "Sinabon", isCompleted: false)
//                    ]
//        arrae.append(contentsOf: newItems)
        guard
            let data = UserDefaults.standard.data(forKey: itemsInArrae),
            let savedItems = try? JSONDecoder().decode([ItemModel].self, from: data)
        else {return}
         
        self.arrae = savedItems
    }
    func deleting(index: IndexSet){
        arrae.remove(atOffsets: index)
    }
    func movements(newOfan: IndexSet, idice: Int){
        arrae.move(fromOffsets: newOfan, toOffset: idice)
    }
    func adding(title: String){
        let newItem = ItemModel(title: title, isCompleted: false)
        arrae.append(newItem)
    }
    func tapping(item: ItemModel) {
//       if  let index = arrae.firstIndex { (existingItem) -> Bool in
//
//            return existingItem.id == item.id
//
//       }{
//
//       }
        if let index = arrae.firstIndex(where: { $0.id == item.id }){
            arrae[index] = item.update()
        }
    }
    func saving() {
        if let encodedDate = try? JSONEncoder().encode(arrae){
            UserDefaults.standard.set(encodedDate, forKey: itemsInArrae)
        }
    }
}
