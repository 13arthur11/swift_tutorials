//
//  addButton.swift
//  anoch
//
//  Created by Артур on 12.08.2021.
//

import SwiftUI

struct addButton: View {
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var listViewModel: ListViewModel
    @State var textFieldText = ""
    @State var alert = ""
    @State var isAlert = false
//    @Binding var arrae
    var body: some View {
        ScrollView{
            VStack {
                TextField("Type Your Task...", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                    .cornerRadius(15)
                Button(action: {
                    buttonpers()
                }, label: {
                    Text("Save".uppercased())
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                })
            }
            .padding(16.0)

        }
        .navigationTitle("Add an Item💰")
        .alert(isPresented: $isAlert, content: getAlert)
        
    }
    func buttonpers() {
        if textIsAppropriate() {
        listViewModel.adding(title: textFieldText)
        presentationMode.wrappedValue.dismiss()
        } else {
            
        }
    }
    func textIsAppropriate() -> Bool {
        if textFieldText.count <= 3 {
            isAlert.toggle()
            alert = "Too short"
            return false
        } else{
            
            return true
        }
    }
    func getAlert() -> Alert {
        return Alert(title: Text(alert))
    }
}

struct addButton_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            addButton()
        }.environmentObject(ListViewModel())
    }
}
