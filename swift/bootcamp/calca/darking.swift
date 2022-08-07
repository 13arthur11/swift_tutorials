//
//  darking.swift
//  calca
//
//  Created by Артур on 10.08.2021.
//

import SwiftUI

struct darking: View {

// Mark: Titl
    

    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        NavigationView {
            
                VStack(spacing: 20){
                    Text("Primary")
                        .foregroundColor(.primary)
                    Text("Secondary")
                        .foregroundColor(.secondary)
                    Text("Black")
                        .foregroundColor(.black)
                    Text("White")
                        .foregroundColor(.white)
                    Text("Red")
                        .foregroundColor(.red)
                    Text("This is so cool")
                        .foregroundColor(Color("sa"))
                    Text("another text bla bla bla")
                        .foregroundColor(colorScheme == .light ? .blue: .yellow)
                }
            }
            .navigationTitle("DarkMode eeee")
        }
    }


struct darking_Previews: PreviewProvider {
    static var previews: some View {
        Group{
        darking()
            .preferredColorScheme(.light)
        darking()
            .preferredColorScheme(.dark)
        }
    }
}
