//
//  compar.swift
//  calca
//
//  Created by Артур on 01.08.2021.
//

import SwiftUI

struct compar: View {
    @State var change = false
    var body: some View {
        ZStack{
        Color.orange
            .ignoresSafeArea( edges: .all)
            Button(action: {
                change.toggle()
            }, label: {
                Image(systemName: "command.square")
                    .font(.custom("someA", size: 70))
            })
            ZStack{
            if change{
                novviy(change: $change)
                    .transition(.asymmetric(insertion: .move(edge: .bottom), removal: .move(edge: .bottom)))
                    .animation(.easeIn)
            }
            }.zIndex(1)
        }
    }
}

struct novviy: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var change: Bool
    var body: some View{
        ZStack{
            Color.purple
                .ignoresSafeArea(edges: .all)
            Button(action: {
                    change.toggle()            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(.black)
            })
        }
    }
}

struct compar_Previews: PreviewProvider {
    static var previews: some View {
        compar()
    }
}
