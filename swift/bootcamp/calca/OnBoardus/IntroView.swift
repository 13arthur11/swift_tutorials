//
//  IntroView.swift
//  calca
//
//  Created by Артур on 12.08.2021.
//

import SwiftUI

struct IntroView: View {
    @AppStorage("signed_in") var isSignedIn = false
    var body: some View {
        ZStack{
            RadialGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.4980392157, green: 1, blue: 0, alpha: 1)), Color(#colorLiteral(red: 0.1019607843, green: 0.2784313725, blue: 0.4, alpha: 1))]),
                           center: .top,
                           startRadius: 5,
                           endRadius: UIScreen.main.bounds.height).edgesIgnoringSafeArea(.all)
            if isSignedIn{
                pslv()
            } else{
                anothrvu()
            }
            
        }
    }
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}
