//
//  qwe.swift
//  calca
//
//  Created by Артур on 01.08.2021.
//

import SwiftUI

struct qwe: View {
    @State var Animacion = false
    var body: some View {
        VStack{
        Button("qwer"){
            Animacion.toggle()
        }
        RoundedRectangle(cornerRadius: Animacion ? 25: 50)
            .frame(width: Animacion ? 100: 300, height: 100)
            .animation(Animation.spring(response: 1, dampingFraction: 0.4, blendDuration: 2))
            
            RoundedRectangle(cornerRadius: Animacion ? 25: 50)
                .frame(width: Animacion ? 100: 300, height: 100)
                .animation(Animation.spring(response: 1, dampingFraction: 0.4, blendDuration: 70))
//            RoundedRectangle(cornerRadius: Animacion ? 25: 50)
//                .frame(width: Animacion ? 100: 300, height: 100)
//                .animation(Animation.easeInOut)
//
//            RoundedRectangle(cornerRadius: Animacion ? 25: 50)
//                .frame(width: Animacion ? 100: 300, height: 100)
//                .animation(Animation.easeOut)
        }
    }
}

struct qwe_Previews: PreviewProvider {
    static var previews: some View {
        qwe()
    }
}
