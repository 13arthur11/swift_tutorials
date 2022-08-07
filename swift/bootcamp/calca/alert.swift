//
//  alert.swift
//  calca
//
//  Created by Артур on 01.08.2021.
//

import SwiftUI

struct alert: View {
    @State var aler = false
    @State var backo = Color.yellow
    var body: some View {
        ZStack {
           backo.edgesIgnoringSafeArea(.all)
            Button("Click") {
                aler.toggle()
            }.alert(isPresented: $aler) {
                Alert(title: Text("Title"),
                      primaryButton: .destructive(Text("sdf"), action:{backo = .blue}),
                      secondaryButton: .cancel()
)
        }
        }
    
    }
}

struct alert_Previews: PreviewProvider {
    static var previews: some View {
        alert()
    }
}
