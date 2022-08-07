//
//  TabView.swift
//  calca
//
//  Created by Артур on 10.08.2021.
//

import SwiftUI

struct TabingView: View {
    @State var qwer = 0
    let icons = ["heart.fill", "eye.fill", "car", "2.square.fill", "globe", "house.fill"]
    var body: some View {
        
        TabView{
            ForEach(icons, id: \.self) { icon in
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .padding(30)
            }
        }
        .background(RadialGradient(gradient: Gradient(colors: [Color.red, Color.blue]), center: .center, startRadius: 5, endRadius: 500))
        .foregroundColor(.yellow)
        .frame(height: 300)
        .tabViewStyle(PageTabViewStyle())
//        TabView(selection: $qwer) {
//            firstTabView(qwer: $qwer)
//                .tabItem {
//                Image(systemName: "1.square.fill")
//                Text("First")
//                }.tag(0)
//
//
//            Text("Another Tab")
//                .tabItem {
//                    Image(systemName: "2.square.fill")
//                    Text("Second")
//                }.tag(1)
//            Text("The Last Tab")
//                .tabItem {
//                    Image(systemName: "3.square.fill")
//                    Text("Third")
//                }.tag(2)
//
//        }
//        .accentColor(.green )
//        .font(.headline)
         
    }
//
}

struct TabingView_Previews: PreviewProvider {
    static var previews: some View {
        TabingView()
    }
}

//struct firstTabView: View {
//    @Binding var qwer: Int
//    var body: some View {
//        ZStack{
//            Color.yellow
//                .edgesIgnoringSafeArea(.all)
//            VStack{
//            Text("The First Tab")
//            Button("go to prof"){
//                qwer = 2
//
//            }
//            }
//        }
//    }
//}
