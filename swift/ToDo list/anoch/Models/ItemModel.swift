//
//  ItemModel.swift
//  anoch
//
//  Created by Артур on 12.08.2021.
//

import Foundation

struct ItemModel: Identifiable, Codable {
    let id: String
    let title: String
    let isCompleted: Bool
    
    init(id: String = UUID().uuidString, title: String, isCompleted: Bool) {
        self.title = title
        self.isCompleted = isCompleted
        self.id = id
    }
    func update() -> ItemModel {
        return ItemModel(id: id, title: title, isCompleted: !isCompleted)
    }
}
