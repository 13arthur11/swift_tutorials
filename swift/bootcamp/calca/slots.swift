//
//  slots.swift
//  calca
//
//  Created by Артур on 11.08.2021.
//

import SwiftUI

struct slots: View {
    var array = ["heart.fill", "globe", "car", "7.square.fill", "bell"].shuffled()
    @State var someNumber = [0, 0, 0]
    @State var text: String = ""
    @State var balance = 1000
    let backo = Color(#colorLiteral(red: 0.1019607843, green: 0.2784313725, blue: 0.4, alpha: 1))
    var random = Int.random(in: 1..<4)
    var body: some View {
       
        NavigationView{
            ZStack{
                backo.edgesIgnoringSafeArea(.all)
                
                VStack(spacing: 30) {
                    Text("Russian Roulette")
                    TextField("Enter your bet", text: $text)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Text("\(balance)")
                        .foregroundColor(.white)
                        .font(.custom("myFont", size: 36))

                    Spacer()
                    HStack(spacing: 25){
                        ForEach(0..<3){ item in
                            Image(systemName: array[someNumber[item]])
                                .font(.custom("myFont", size: 36))
                                .frame(width: 50, height: 50)
                                .padding()
                                .background(Color.yellow)
                                .cornerRadius(15)
                        }
                    }.offset(y: -100)
                    Button("Bet"){
                        betting()
                    }
                    Spacer()
                    
                }
                
            }
            .navigationTitle("Russian Roulette")
            
        }
    }
    func betting() {
        someNumber[0] = Int.random(in: 0..<array.count)
        someNumber[1] = Int.random(in: 0..<array.count)
        someNumber[2] = Int.random(in: 0..<array.count)
        let ban = Int(text) ?? 0
        if someNumber[0] == someNumber[1] && someNumber[1] == someNumber[2]{
            balance += 5000*ban
        } else {
            balance -= ban
        }
    }

}

struct slots_Previews: PreviewProvider {
    static var previews: some View {
        slots()
    }
}
