//
//  contextMenu.swift
//  calca
//
//  Created by Артур on 10.08.2021.
//

import SwiftUI

struct contextMenu: View {
    @State var backcol = Color.init(#colorLiteral(red: 1, green: 0.9686169232, blue: 0.4269030962, alpha: 1))
    @State var text = ""
    @State var arrae = [""]
    var body: some View {
        NavigationView {
            
                ZStack{
                    
        backcol
            .edgesIgnoringSafeArea(.all)
                    ScrollView {
                    VStack(spacing: 30){
                        
                        ForEach(arrae, id: \.self ){index in
                            Text(index)
               
                        }
                    TextField("Type your name...", text: $text)
                        .padding()
                        .background(Color.gray.opacity(0.3).cornerRadius(15))
                        .font(.title)
                        .foregroundColor(.red)
                        Button(action: {
                            if apropriate(){
                                saving()
                            }
                        }, label: {
                            Text("Button")
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(apropriate() ? Color.blue.opacity(0.3)
                                                .cornerRadius(15): Color.gray.cornerRadius(15))
                                .font(.title)
                                .foregroundColor(.blue)
                        }).padding(.horizontal, 10)
                        .disabled(!apropriate())
                        
                        
                VStack(alignment: .leading, spacing: 5){
                    Image(systemName: "house.fill")
                        .font(.largeTitle)
                    Text("YOU ARE COOL")
                        .font(.title)
                    Text("YOU ARE NICE")
                        .font(.headline)
                }
                .padding(30)
                .foregroundColor(.white)
                .background(Color(#colorLiteral(red: 0, green: 0.1443301376, blue: 1, alpha: 1)).cornerRadius(30))
                .contextMenu(ContextMenu(menuItems: {
                    Button(action: {
                        backcol = Color.init(#colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1))
                    }, label: {
                        Label("Comment", systemImage: "flame.fill")
                    })
                    Button(action: {
                        backcol = Color.init(#colorLiteral(red: 0.5137254902, green: 1, blue: 0.03529411765, alpha: 1))
                    }, label: {
                        Label("Like", systemImage: "heart.fill")
                    })
                    Button(action: {
                        backcol = Color.init(#colorLiteral(red: 0.1529411765, green: 0.2823529412, blue: 0.5882352941, alpha: 1))

                    }, label: {
                        HStack{
                        Text("This text does smth")
                            Image(systemName: "car")
                        }
                    })
                        
                }))
                }
                }
                .navigationTitle("This is your name")
            }
        }
    }
    
    func apropriate() -> Bool {
        if (text.count <= 3)  {
            return false
        }
        return true
    }
    func saving() {
        arrae.append(text)
text = ""
    }
}

struct contextMenu_Previews: PreviewProvider {
    static var previews: some View {
        contextMenu()
    }
}
