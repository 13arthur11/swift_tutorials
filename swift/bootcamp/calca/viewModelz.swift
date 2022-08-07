//
//  viewModelz.swift
//  calca
//
//  Created by Артур on 10.08.2021.
//

import SwiftUI

struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let fruitCount: Int
}


class fanctions: ObservableObject {
    @Published var array: [FruitModel] = []
    init() {
        getFruits()
    }
    
    func deleting(index: IndexSet) {
        array.remove(atOffsets: index)
    }
    
    func getFruits() {
        let fruit1 = FruitModel(name: "Oranges", fruitCount: 3)
        let fruit2 = FruitModel(name: "Bananas", fruitCount: 777)
        let fruit3 = FruitModel(name: "WaterMelon", fruitCount: 54)
        array.append(fruit1)
        array.append(fruit3)
        array.append(fruit2)
    }
}


    struct viewModelz: View {
        //    @State var arrae: [FruitModel] = []
        @StateObject var frut: fanctions = fanctions()
        var body: some View {
            NavigationView{
                List {
                    ForEach(frut.array) { fruit in
                        HStack{
                            Text("\(fruit.fruitCount)")
                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                        }
                    }
                    .onDelete(perform: frut.deleting)
                }
                .navigationBarItems(leading: Button(action: {
                    frut.array.shuffle()
                }, label: {
                    Text("Shuffle🤪🤪🤪🤪")
                }), trailing:  NavigationLink("Go Green", destination: secondScre(frut: frut)))
                .navigationTitle("Fruit List")
                .listStyle(GroupedListStyle())
//                .onAppear {
//                    frut.getFruits()
//                }
            }
        }
    }

struct secondScre: View {
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var frut: fanctions
    var body: some View{
        NavigationView{
        ZStack{
            Color.green
                .edgesIgnoringSafeArea(.all)
            VStack {
                ForEach(frut.array){ fruit in
                    Text(fruit.name)
                }
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Text("Backing")
            })
            }
            }
        }
    }
}


struct viewModelz_Previews: PreviewProvider {
    static var previews: some View {
        viewModelz()
    }
}
