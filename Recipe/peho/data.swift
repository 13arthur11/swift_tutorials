//
//  data.swift
//  peho
//
//  Created by Артур on 03.09.2021.
//

import Foundation

struct Recomendations: Identifiable {
    var id = UUID()
    var recName: String
    var recTitle: String
    var recRait: Double
    var recTime: Int
}
struct recomPics {
    static let recom = [
    Recomendations(recName: "some", recTitle: "Мясцо", recRait: 5, recTime: 30),
        Recomendations(recName: "im", recTitle: "BMW X5", recRait: 2, recTime: 15),
        Recomendations(recName: "len", recTitle: "1973 года", recRait: 5, recTime: 45),
        Recomendations(recName: "cole", recTitle: "Карбюратор Инжектор", recRait: 2, recTime: 60),
        Recomendations(recName: "sort", recTitle: "Инспектор Проектор Икпорт", recRait: 3.5, recTime: 85)
    ].shuffled()
}

struct Category: Identifiable {
    
    var id = UUID()
    var name: String
}
struct Categories {
    static let allCats = [
    Category(name: "Мясо"),
    Category(name: "Рыба"),
    Category(name: "Салат"),
    Category(name: "Десерт")
    ]
}
struct pics: Identifiable {
    var id = UUID()
    var picName: String
    var title: String
    var rait: Double
    var time: Int
}
struct picasos {
    static let picans = [
        pics(picName: "cuba", title: "Стейк из говядины", rait: 0.5, time: 30000000),
        pics(picName: "ethi", title: "Стейк из свинины", rait: 5, time: 60),
        pics(picName: "kenya", title: "Стейк из курицы", rait: 4.75, time: 45),
        pics(picName: "jordan", title: "БигМак", rait: 3.5, time: 35),
        pics(picName: "iran", title: "Картофель по-деревенски", rait: 2.75, time: 40),
        pics(picName: "iraq", title: "Люлякебаб", rait: 2, time: 20),
        pics(picName: "india", title: "Крольчатина", rait: 1.5, time: 25),
        pics(picName: "hong", title: "Жаренная собака", rait: 3.5, time: 30)
    ].shuffled()
}
