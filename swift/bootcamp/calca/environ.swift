//
//  environ.swift
//  calca
//
//  Created by Артур on 11.08.2021.
//

import SwiftUI

class sata: ObservableObject {
    
    @Published var dataArray: [String] = []
    init() {
        getData()
    }
    func getData() {
        self.dataArray.append(contentsOf: ["apple", "macbook", "coldSiemens", "IMac"])
    }
    
}

struct environ: View {
    @StateObject var viewModel = sata()
    var body: some View {
        NavigationView{
            List{
                ForEach(viewModel.dataArray, id: \.self) { item in
                    NavigationLink( destination: detailView(texting: item)                .navigationBarBackButtonHidden(true)
){
                            Text(item)
                        }
                    
                }
                
                .navigationTitle("Devices")
            }
  
        }
        .environmentObject(viewModel)
        
    }
}

struct detailView: View {
    @State var isPressed = false
    let texting: String
    var body: some View{
        ZStack{
            Color.green
                .edgesIgnoringSafeArea(.all)
            VStack{
            NavigationLink(
                destination: thirdView(),
                label: {
                    Text(texting)
                        .font(.headline)
                        .padding()
                        .background(Color.white)
                })
                Button(texting){
//                    buttonPressed()z
                }


            }
        }
    }

    }


struct thirdView: View {
    @EnvironmentObject var alinaCatalina: sata
    var body: some View{
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)), Color(#colorLiteral(red: 0.7721731676, green: 1, blue: 0.4641338134, alpha: 1))]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing).ignoresSafeArea()
            ScrollView{
                VStack(spacing: 20){
                    ForEach(alinaCatalina.dataArray, id: \.self) { sinon in
                        Text(sinon)
                    }
                }
                .foregroundColor(.white)
                .font(.largeTitle)
            }
        }
    }
}

struct environ_Previews: PreviewProvider {
    static var previews: some View {
        environ()
//        detailView(texting: "sfkm")
    }
}
