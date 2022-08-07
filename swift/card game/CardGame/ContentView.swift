//
//  ContentView.swift
//  CardGame
//
//  Created by Артур on 31.08.2021.
//

import SwiftUI

struct ContentView: View {
    @State var counti = 6
    var emojis: Array<String> = ["🤘", "👁", "🦾", "🤑", "💰", "🏅", "🍋", "💔", "🤡", "🥺"].shuffled()
    var body: some View {
        VStack {
            HStack{
                ScrollView {
                    
                    LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))]) {
                        ForEach(emojis[0..<counti], id: \.self) { item in
                            CardView(textOnCard: item)
                                .aspectRatio(2/3, contentMode: .fit)
                        }
                    }
                }
            }
            .padding(.horizontal)
            .foregroundColor(.red)
            Spacer()
            
        }
    }
}


struct CardView: View {
    @State var isUp: Bool = true
    @State var textOnCard: String
    var body: some View{
        ZStack{
            if isUp{
                RoundedRectangle(cornerRadius: 25)
                    .foregroundColor(.white)
                    .overlay(
                        RoundedRectangle(cornerRadius: 25)
                            .strokeBorder(lineWidth: 5)
                    )
                Text(textOnCard)
                    .font(.largeTitle)
            } else {
                RoundedRectangle(cornerRadius: 25)
                    .foregroundColor(.red)
            }
        }
        .animation(.spring(response: 0.6, dampingFraction: 0.9, blendDuration: 0))
        .onTapGesture {
            isUp.toggle()
        }
        
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {

            ContentView()
                .preferredColorScheme(.light)
        }
        ContentView()
            .preferredColorScheme(.dark)
    }
}
