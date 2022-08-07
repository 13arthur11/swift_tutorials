//
//  pslv.swift
//  calca
//
//  Created by Артур on 12.08.2021.
//

import SwiftUI

struct pslv: View {
    @AppStorage("namas") var namas: String?
    @AppStorage("agas") var agas: Int?
    @AppStorage("gandar") var gandar: String?
    @AppStorage("signed_in") var isSignedIn = false
    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.4980392157, green: 1, blue: 0, alpha: 1)), Color(#colorLiteral(red: 0.1019607843, green: 0.2784313725, blue: 0.4, alpha: 1))]),
                           center: .top,
                           startRadius: 5,
                       endRadius: UIScreen.main.bounds.height).edgesIgnoringSafeArea(.all)
            VStack{
                Text("Your username is \(namas ?? "debil")")
                Text("Your age is \(agas ?? 0)")
                Text("Your gender is \(gandar ?? "debil")")
                Text("Sign Out")
                    .onTapGesture {
                        signingOut()
                    }
            }
        }
    }
    func signingOut()  {
        namas = nil
        agas = nil
        gandar = nil
        withAnimation(.spring()){
        isSignedIn = false
        }
    }
}

struct pslv_Previews: PreviewProvider {
    static var previews: some View {
        pslv()
    }
}
