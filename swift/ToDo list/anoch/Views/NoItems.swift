//
//  SwiftUIView.swift
//  anoch
//
//  Created by Артур on 12.08.2021.
//

import SwiftUI

struct NoItems: View {
    @State var animaz = false
    var body: some View {
        ScrollView{
            VStack {
                Text("No Items!")
                    .font(.title)
                    .fontWeight(.semibold)
                Text("Are you productive? Then clcik add and add a task!")
                NavigationLink(
                    destination: addButton(),
                    label: {
                        Text("Add YourTask💪🏿")
                    })
                    .foregroundColor(.white)
                    .font(.headline)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(animaz ? Color.red: Color.blue)
                    .cornerRadius(10)
                    .offset(x: animaz ? 0: -25, y: animaz ? 0: 95)
            }.multilineTextAlignment(.center)
            .padding(40)
            .onAppear(perform: anim)
        }
        .frame(maxWidth: .infinity,maxHeight: .infinity)
        .navigationTitle("title")
    }
    func anim() {
        guard !animaz else {
            return
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            withAnimation(
                Animation.easeInOut(duration: 2)
                    .repeatForever()
            ){
                animaz.toggle()
            }
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
        NoItems()
        }
    }
}
