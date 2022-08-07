//
//  anothrvu.swift
//  calca
//
//  Created by Артур on 12.08.2021.
//

import SwiftUI



struct anothrvu: View {
    @State var name = ""
    let trans: AnyTransition = .asymmetric(
        insertion: .move(edge: .trailing),
        removal: .move(edge: .leading))
    @State var onBoarding = 0
    @State var age: Double = 50
    @State var gender = ""
    @State var alrt = false
    @State var textAlert = ""
    
    @AppStorage("namas") var namas: String?
    @AppStorage("agas") var agas: Int?
    @AppStorage("gandar") var gandar: String?
    @AppStorage("signed_in") var isSignedIn = false

    
    var body: some View {
        ZStack {
            // content
            ZStack{
                switch onBoarding {
                case 0:
                    welcomes
                        .transition(trans)
                case 1:
                    addName
                        .transition(trans)
                case 2:
                    addAge
                        .transition(trans)
                case 3:
                    addGender
                        .transition(trans)
                default:
                    pslv()                }
            }
            //buttons
            VStack{
                Spacer()
                bottomButton
            }.alert(isPresented: $alrt, content: {
                return Alert(title: Text(textAlert))
            })
        }.padding(30)
    }

}

struct anothrvu_Previews: PreviewProvider {
    static var previews: some View {
        anothrvu().background(Color.purple)
    }
}

extension anothrvu {
     private var bottomButton: some View{
        Text(onBoarding == 0 ? "Sign Up": onBoarding == 3 ? "Find Your True Love❤️": "Next")
            .font(.headline)
            .foregroundColor(.purple)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(Color.white)
            .cornerRadius(10)
            .onTapGesture {
                nextButton()
            }
    }
    private var welcomes: some View{
        VStack(spacing: 40){
            Spacer()
            Image(systemName: "heart.text.square.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundColor(.white)
            Text("Find Your Match")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .overlay(
                Capsule(style: .continuous)
                    .frame(height: 3)
                    .offset(y: 5)
                    .foregroundColor(.white)
                    , alignment:  .bottom
                )
            Text("The best App to find your match. If you are broke, high or insane - this app is totally for you. This is why you should download it.")
                .fontWeight(.medium)
                .foregroundColor(.white)
                
            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.center)
        .padding(30)
    }
    
    private var addName: some View {
        VStack(spacing: 20){
            Spacer()
            
            Text("What is your name?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            TextField("Your name is...", text: $name)
                .font(.headline)
                .frame(height: 55)
                .padding(.horizontal)
                .background(Color.white)
                .cornerRadius(10)

                
            Spacer()
            Spacer()
        }
        .padding(30)
    }
    private var addAge: some View {
        VStack(spacing: 20){
            Spacer()
            
            Text("What is your age?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            Text("\(age, specifier: "%.f")")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            Slider(value: $age, in: 10...100, step: 1)
                .accentColor(.white)
            Spacer()
            Spacer()
    }
    }
    private var addGender: some View{
        VStack(spacing: 20){
            Spacer()
            
            Text("What is your gender?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)

            Picker(selection: $gender,
                   label:
                    Text(gender.count > 0 ? gender : "Select a Gender")
                    .font(.headline)
                    .foregroundColor(.purple)
                    .frame(maxWidth: .infinity)
                    .frame(height: 55)
                    .background(Color.white)
                    .cornerRadius(10)
            
            ){
                Text("Male").tag("Male")
                Text("Female").tag("Female")
            }.pickerStyle(MenuPickerStyle())
            Spacer()
            Spacer()
        }
    }
}

extension anothrvu {
    func nextButton() {
        
        switch onBoarding {
        case 1:
            guard name.count >= 3 else {
               shaw(title: "Username too short")
                return}
            
        case 3:
            guard gender.count > 1 else {
                shaw(title: "Select a Gender")
                return
            }
        default:
            break
        }
        
        if onBoarding == 3{
            namas = name
            gandar = gender
            agas = Int(age)
            isSignedIn = true
        } else {
        withAnimation(.spring()){
            onBoarding += 1
            }
        }
    }
    func shaw(title: String) {
        textAlert = title
        alrt.toggle()
    }
}
