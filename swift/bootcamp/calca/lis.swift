//
//  lis.swift
//  calca
//
//  Created by Артур on 01.08.2021.
//

import SwiftUI

struct lis: View {
    @State var fruits = ["APpLa", "oraNga", "grapa", "tresa"]
    var body: some View {
        NavigationView {
            List{
                Section(header: Text("freuits")){
                ForEach(fruits, id: \.self){ frui in
                    Text(frui.capitalized)
                }
                .onDelete(perform: { indexSet in
                    fruits.remove(atOffsets: indexSet)
                })
                .onMove(perform: { indices, newOffset in
                fruits.move(fromOffsets: indices, toOffset: newOffset)
                })}
                    .listRowBackground(Color.pink)
            }
//            .listStyle(InsetListStyle())
            .navigationTitle(Text("sfij"))
            .navigationBarItems(leading: EditButton(),
                                trailing: Button("Add", action: {
                                    fruits.append("Coconout")
                                }))
        }
    }
}

struct lis_Previews: PreviewProvider {
    static var previews: some View {
        lis()
    }
}
