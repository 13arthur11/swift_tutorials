//
//  oreh.swift
//  calca
//
//  Created by Артур on 31.07.2021.
//

import SwiftUI

struct oreh: View {
    @State var oregg = false
    var body: some View {
        NavigationView{
        VStack{
            NavigationLink("Go", destination: Text("see"))
            
        Text("Hello, World!")
        Button("Progers"){
            withAnimation(Animation.default.repeatForever(autoreverses: false)){
            oregg.toggle()
            }
        }
            RoundedRectangle(cornerRadius: 50)
                .fill(oregg ? Color.red: Color.blue)
                .frame(width: 200, height: 200)
//                .rotationEffect(.degrees(oregg ? 0: 360))
//                .offset(y: oregg ? -1000: 0)
//            if oregg{ ProgressView()
//                .font(.title)
//                .foregroundColor(.red)}

        
        }
    }
}
}

struct oreh_presviews: PreviewProvider {
    static var previews: some View {
        oreh()
    }
}
