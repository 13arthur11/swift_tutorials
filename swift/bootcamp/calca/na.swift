//
//  na.swift
//  calca
//
//  Created by Артур on 01.08.2021.
//

import SwiftUI

struct na: View {
    var body: some View {
        NavigationView{
            ScrollView{
            Text("Hello, World!")
            Text("Hello, World!")
            Text("Hello, World!")
                NavigationLink("igohdj", destination: Text("fgs"))

            }
            .navigationTitle("Arthur").accentColor(.blue)
//            .navigationBarTitleDisplayMode(.inline)
//            .navigationBarHidden(true)
        }
    }
}

struct na_Previews: PreviewProvider {
    static var previews: some View {
        na()
    }
}
