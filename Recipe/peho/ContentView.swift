//
//  ContentView.swift
//  peho
//
//  Created by Артур on 03.09.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            //            Color(#colorLiteral(red: 1, green: 0.831372549, blue: 0.4745098039, alpha: 1)).edgesIgnoringSafeArea(.all)
            ScrollView(showsIndicators: false) {
                VStack {
                    VStack(alignment: .leading){
                        Text("Рекомендации")
                            .fontWeight(.medium)
                            .font(.system(size: 28))
                            .padding(.top, 44)
                            .padding(.leading, 19)
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack{
                                ForEach(recomPics.recom, id: \.id) { pic in
                                VStack(alignment: .leading) {
                                    Image("\(pic.recName)")
                                            .resizable()
                                            .renderingMode(.original)
                                        .frame(width: UIScreen.main.bounds.width*3/4 , height: UIScreen.main.bounds.height/5)
                                            .clipShape(RoundedRectangle(cornerRadius: 22))
                                            .overlay(RoundedRectangle(cornerRadius: 22)
                                                        .stroke(Color.black, lineWidth: 1))
                                            .padding(.horizontal, 19)
                                            .edgesIgnoringSafeArea(.all)
                                        .onTapGesture(
                                        Text(pic.recTitle)
                                            .fontWeight(.medium)
                                            .font(.system(size: 24))
                                            .padding(.leading, 19)
                                            .foregroundColor(.black)
                                        HStack{
                                            Text("\(pic.recRait, specifier: "%.1f")")
                                                .padding(.leading, 46)
                                            Image(systemName: "star.fill")
                                            
                                            Text("\(pic.recTime) мин")
                                                .padding(.leading, 30)
                                        }.foregroundColor(Color(#colorLiteral(red: 0.2862745098, green: 0.2862745098, blue: 0.2862745098, alpha: 1)))
                                        .padding(.bottom)
                                    }
                            }
                        }
                        }
                                    Spacer()
                                
                                HStack{
                                    Text("Фильтры")
                                        .fontWeight(.medium)
                                        .font(.system(size: 28))
                                        .padding(.leading, 19)
                                        .padding(.top, 20)
                                    Spacer()
                                }
                                ScrollView(.horizontal, showsIndicators: false){
                                    HStack {
                                        ForEach(Categories.allCats, id: \.id){ category in
                                            Text(category.name)
                                                .padding()
                                                .background(Color(#colorLiteral(red: 0.8374180198, green: 0.8374378085, blue: 0.8374271393, alpha: 1)))
                                                .cornerRadius(8)
                                        }
                                    }
                                }.padding(.leading)
                                VStack{
                                    
                                    HStack {
                                        Text("Рецепты")
                                            .fontWeight(.medium)
                                            .padding(.leading, 21)
                                            .padding(.top, 20)
                                            .font(.system(size: 28))
                                        Spacer()
                                    }
                                    
                                    
                                    VStack {
                                        ForEach(picasos.picans, id: \.id) { pic in
                                            
                                            ZStack {
                                                VStack(alignment: .leading) {
                                                    Image("\(pic.picName)")
                                                        .resizable()
                                                        .renderingMode(.original)
                                                        .frame(width: .infinity, height: UIScreen.main.bounds.height*215/812)
                                                        .clipShape(RoundedRectangle(cornerRadius: 22))
                                                        .overlay(RoundedRectangle(cornerRadius: 22)
                                                                    .stroke(Color.black, lineWidth: 1))
                                                        .padding(.horizontal, 19)
                                                        .edgesIgnoringSafeArea(.all)
                                                    Text(pic.title)
                                                        .fontWeight(.medium)
                                                        .font(.system(size: 24))
                                                        .padding(.leading, 19)
                                                        .foregroundColor(.black)
                                                    HStack{
                                                        Text("\(pic.rait, specifier: "%.1f")")
                                                            .padding(.leading, 46)
                                                        Image(systemName: "star.fill")
                                                        
                                                        Text("\(pic.time) мин")
                                                            .padding(.leading, 30)
                                                    }.foregroundColor(Color(#colorLiteral(red: 0.2862745098, green: 0.2862745098, blue: 0.2862745098, alpha: 1)))
                                                    .padding(.bottom)
                                                }.zIndex(1)
                                                //                                        RoundedRectangle(cornerRadius: 22)
                                                //                                            .frame(width: .infinity, height: 300)
                                                //                                            .padding(.horizontal, 19)
                                                //                                            .offset(y: 8.0)
                                                //                                            .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 0.4404218055)))
                                                
                                            }
                                        }
                                    }
                                    
                                    Spacer()
                                }
                                Spacer()
                            }
                        }
                    }
                }
            }
        }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

    
