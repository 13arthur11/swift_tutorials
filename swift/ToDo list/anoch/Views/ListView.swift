//
//  ListView.swift
//  anoch
//
//  Created by Артур on 12.08.2021.
//

import SwiftUI

struct ListView: View {
    @EnvironmentObject var ListViewModel: ListViewModel
 
    var body: some View {
        
        
        ZStack {
            if ListViewModel.arrae.isEmpty {
                NoItems()
            } else {
                List{
                    ForEach(ListViewModel.arrae) { item in
                        
                        ListRowView(item: item)
                            .onTapGesture {
                                withAnimation(.linear){
                                    ListViewModel.tapping(item: item)
                                }
                            }
                    }
                    .onDelete(perform: ListViewModel.deleting)
                    .onMove(perform: ListViewModel.movements)
                }
                .listStyle(PlainListStyle())
                
            }
        }
        .navigationTitle("ToDo List🔥")
        .navigationBarItems(
            leading: EditButton(),
            trailing:
                NavigationLink("Add", destination: addButton())
        )
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListView()
        }.environmentObject(ListViewModel())
    }
}


