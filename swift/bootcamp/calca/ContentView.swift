//
//  ContentView.swift
//  calca
//
//  Created by Артур on 18.07.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var persi = 0
    @State private var bill = ""
    @State private var ppl = 2
    
    let prozenti = [0, 5, 10, 15, 20]

    var fianle: Double{
        let people = Double(ppl)
        let denigvse = Double(bill) ?? 0
        let perton = Double(prozenti[persi])/100
        let chai = denigvse*perton
        let grand = (denigvse+chai)/people
        return grand
    }
    
    var body: some View{
        NavigationView{
        Form{
            Section(header: Text("Info About bill")){
            TextField("Enter the amount of bill", text: $bill)
            
            Picker(selection: $ppl, label: Text("How many ppl?")){
                ForEach(0..<50){ index in
                    Text("\(index) ppl")
                }
            }
            }
            Section(header: Text("How much want leave?")) {
                Picker(selection: $persi, label: Text("how many % of bill?")){
                    ForEach(0..<prozenti.count){ index in
                        Text("\(self.prozenti[index])%")
                    }
                }.pickerStyle(SegmentedPickerStyle())
                

            }
            Section(header: Text("Fianl result")){
                Text("\(fianle, specifier: "%.2f")")
            }
        }
        .navigationBarTitle("Calculator X")
        }
    }
}










struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
