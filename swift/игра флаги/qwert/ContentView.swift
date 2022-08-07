//
//  ContentView.swift
//  qwert
//
//  Created by Артур on 19.07.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var arrayOfFlags = ["USA", "UK", "Sweden", "Russia", "Grece", "Germany", "Canada", "Brazil", "Bangladesh", "Argentina", "India", "Iran", "Thailand", "Tanzania", "Kenya", "Iraq", "Uganda", "Burkina Faso", "Ethiopia", "Malawi", "Philippines", "Zimbabwe", "Jordan", "Taiwan", "Cuba", "Laos", "Albania", "Hong Kong", "Togo", "Namibia", "Panama"].shuffled()
    @State private var correctAns = Int.random(in: 0...2)
    @State var score = 0
    @State private var showScore = false
@State private var textT = ""

    
    var body: some View {
        
        
        
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue, .white]), startPoint: .top, endPoint: . bottom).edgesIgnoringSafeArea(.all)
            VStack(spacing: 25){
                VStack{
                    Text("Select a flag")
                        .foregroundColor(.white)
                    Text("\(arrayOfFlags[correctAns])")
                        .font(.largeTitle)
                        .foregroundColor(Color.init(#colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)))
                        .fontWeight(.black)
                }
                ForEach(0..<3){ index in
                    Button(action:{
                        self.flagTap(index)
                        self.showScore = true
                        
                    }){
                        Image(self.arrayOfFlags[index])
                            .renderingMode(.original)
                            .frame(width: 250, height: 135)
                            .clipShape(Capsule())
                            .overlay(Capsule()
                                        .stroke(Color.black, lineWidth: 1))
                            .shadow(color: .black, radius: 2)
                    }
                }
                Text("Total Score \(score)")
                    .font(.largeTitle)
                    .fontWeight(.black)
                Spacer()
            }
        }.alert(isPresented: $showScore) {
            Alert(title: Text("\(textT)"), message: Text("\(score)"), primaryButton: .default(Text("Next")){
                self.askQuestion()
            }, secondaryButton: .default(Text("Stop")){
                
            })
        }
        
    }
    func flagTap(_ num: Int){
        if num == correctAns{
            score += 1
            textT = "Correct"
        } else {
            score -= 1
            textT = "Incorrext, this is \(arrayOfFlags[num])"
        }
    }
    
    func askQuestion() {
        arrayOfFlags.shuffle()
        correctAns = Int.random(in: 0...2)
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}



