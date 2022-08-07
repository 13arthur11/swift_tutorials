//
//  tupping.swift
//  calca
//
//  Created by Артур on 10.08.2021.
//

import SwiftUI

struct tupping: View {
    @State var someVar = false
    var body: some View {
        VStack(spacing: 40) {
            RoundedRectangle(cornerRadius: 25.0)
                .foregroundColor(someVar ? .blue: .yellow)
                .frame(height: 200)
            Button(action: {
                someVar.toggle()
            }, label: {
                Text("Button")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(25)
                
            })
            Text("Tap Gest")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .cornerRadius(25)
                .onTapGesture(count: 2) {
                    someVar.toggle()
                }
            Spacer()
        }.padding(40)
    }
}

struct tupping_Previews: PreviewProvider {
    static var previews: some View {
        tupping()
    }
}
