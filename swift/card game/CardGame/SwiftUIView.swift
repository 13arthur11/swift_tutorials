//
//  SwiftUIView.swift
//  CardGame
//
//  Created by Артур on 31.08.2021.
//

import SwiftUI

struct SwiftUIView: View {
    var maxx = UInt8.max
    var b = UInt8.min
    var milliard = Int.random(in: 0..<100)
    var body: some View {
        Text("\(milliard)")
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
