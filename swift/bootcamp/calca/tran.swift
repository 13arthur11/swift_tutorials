//
//  tran.swift
//  calca
//
//  Created by Артур on 01.08.2021.
//

import SwiftUI

struct tran: View {
    
    @State var animazia = false
    
    var body: some View {
        ZStack(alignment: .bottom){
            
            
            VStack{
                Button("BUttomw"){
                    animazia.toggle()
                }
                Spacer()
            }
            if animazia {
                RoundedRectangle(cornerRadius: 25)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .transition(.asymmetric(insertion: .move(edge: .bottom), removal: .move(edge: .bottom)))
                    .animation(Animation.spring(response: 3, dampingFraction: 3, blendDuration: 1) )
            }
        }            .ignoresSafeArea(edges: .bottom)
    }
}

struct tran_Previews: PreviewProvider {
    static var previews: some View {
        tran()
    }
}
