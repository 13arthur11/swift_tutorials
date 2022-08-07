//
//  sheet.swift
//  calca
//
//  Created by Артур on 01.08.2021.
//

import SwiftUI

struct sheet: View {
    @State var showI = false
    var body: some View {
        ZStack{
            Color.green
                .ignoresSafeArea(edges: .all)
            
            Button(action: {
                showI.toggle()
            }, label: {
                Text("Button")
                    .padding()
                    .padding(.horizontal, 100)
                    .background(Color.white)
                    .clipShape(Capsule())
            })
            
            
        }.fullScreenCover(isPresented: $showI, content: {
EgorCole()        })
        
    }
}

struct EgorCole: View {
    @Environment(\.presentationMode) var presentationMode
    let backgournd = Color.red
    var body: some View {
        ZStack{
            backgournd.ignoresSafeArea( edges: .all)
            VStack{
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {Image(systemName: "xmark")
                    .font(.largeTitle)
                    .offset(x: 10, y: 10)
            })
                
            Text("Egor Tolstiy")
                .font(.custom("ere", size: 70, relativeTo: .body))
            }
        }
    }
}

struct sheet_Previews: PreviewProvider {
    static var previews: some View {
sheet()
    }
}
