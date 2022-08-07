//
//  onApI.swift
//  calca
//
//  Created by Артур on 10.08.2021.
//

import SwiftUI

struct onApI: View {
    @State var texting = "Loading"
    @State var count = 0
    var body: some View {
        NavigationView{
            ScrollView{
                Text(texting)
                LazyVStack{
                    ForEach(0..<50){_ in
                        Circle()
                            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: .center)
                            .foregroundColor(.red)
                            .onAppear{
                                count += 1
                            }
                    }
                }
            }
            .onAppear(perform: {
                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                    texting = "some new lines and texts"
                }
            })
            .navigationTitle("On Appear \(count)")
        }
    }
    

}

struct onApI_Previews: PreviewProvider {
    static var previews: some View {
        onApI()
    }
}
