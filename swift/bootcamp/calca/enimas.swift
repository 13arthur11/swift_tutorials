//
//  enimas.swift
//  calca
//
//  Created by Артур on 11.08.2021.
//

import SwiftUI

struct enimas: View {
    
    var backo: Color
    let coun: Int
    let tityl: String
    
    init(coun: Int, tityl: String) {
        self.coun = coun
        self.tityl = tityl
        tityl == "piches" ? (backo = .green): (backo = .blue)
        tityl == "apples" ? (backo = .red): (backo = .yellow)
    }
    
    var body: some View {
        VStack {
            Text("\(coun)")
                .font(.title)
                .underline(true, color: Color.white)
            Text(tityl)
        }
        .frame(width: 150, height: 150, alignment: .center)
        .background(backo)
        .cornerRadius(25)
    }
}

struct enimas_Previews: PreviewProvider {
    static var previews: some View {
        enimas(coun: 6, tityl: "kjn")
    }
}
