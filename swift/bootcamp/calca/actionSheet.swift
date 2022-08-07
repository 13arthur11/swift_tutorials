//
//  actionSheet.swift
//  calca
//
//  Created by Артур on 09.08.2021.
//

import SwiftUI

struct actionSheet: View {
    
    @State var showSheet = false
    @State var which: ActionsTwo = .MyPost
    
    enum ActionsTwo {
        case MyPost
        case NotMine
    }
    
    var body: some View {
        VStack{
        HStack{
            Circle()
                .frame(width: 30, height: 30)
            Text("ya_ne_clown")
            Spacer()
            Button(action: {
                which = .MyPost
                showSheet.toggle()
            }, label: {
                Image(systemName: "ellipsis")
                
            }).padding()
        }
    Rectangle()
        .aspectRatio(1, contentMode: .fit)
        .actionSheet(isPresented: $showSheet, content: actshe)
        }
    }
    func actshe() -> ActionSheet {
        
            let but4: ActionSheet.Button = .cancel()
            let but5: ActionSheet.Button = .default(Text("Like"))
            let but6: ActionSheet.Button = .default(Text("Comment"))
            
        let but1: ActionSheet.Button = .default(Text("Defa"))
        let but2: ActionSheet.Button = .destructive(Text("Shina"))
        switch which {
        case .MyPost:
            return ActionSheet(title: Text("zhizha"), message: Text("TI DAUN?"), buttons: [but1, but2])        default:
                return ActionSheet(title: Text("Not Your Post"), message: Text("You Can like or leave a comment"), buttons: [but4, but5, but6])
        }
        
    }
}

struct actionSheet_Previews: PreviewProvider {
    static var previews: some View {
        actionSheet()
    }
}
