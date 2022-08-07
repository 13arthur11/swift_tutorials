//
//  colorpick.swift
//  calca
//
//  Created by Артур on 10.08.2021.
//

import SwiftUI

struct colorpick: View {
    @State var backcol = Color.yellow
    var body: some View {
        ZStack{
backcol
    .edgesIgnoringSafeArea(.all)
            
            ColorPicker("se;ect a color",
                        selection: $backcol,
                        supportsOpacity: true)
                .padding()
                .background(Color.black)
                .cornerRadius(10)
                .foregroundColor(.white)
                .font(.headline)
                .padding(50)
        }
      
    }
}

struct colorpick_Previews: PreviewProvider {
    static var previews: some View {
        colorpick()
    }
}
