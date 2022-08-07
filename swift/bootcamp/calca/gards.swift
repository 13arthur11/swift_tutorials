//
//  gards.swift
//  calca
//
//  Created by Артур on 10.08.2021.
//

import SwiftUI

struct gards: View {
    @State var tecki = ""
    var body: some View {
        NavigationView {
            VStack {
                Text("Hello, World!")
                Text(tecki)
                    .font(.title)
                Spacer()
            }
            .navigationTitle("Some titul not me you")
            .onAppear{
               load()
            }
        }
    }
    func load(){
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            tecki = "loading finished"

        }
    }
}

struct gards_Previews: PreviewProvider {
    static var previews: some View {
        gards()
    }
}
