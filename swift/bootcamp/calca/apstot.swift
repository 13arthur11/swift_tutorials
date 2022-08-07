//
//  apstot.swift
//  calca
//
//  Created by Артур on 11.08.2021.
//

import SwiftUI

struct apstot: View {
    
    @AppStorage("name") var currentUsername: String?
    var body: some View {
        VStack(spacing: 20){
            Text(currentUsername ?? "Add Username Here")
            if let a = currentUsername {
                Text(a)
            }
            Button("Save".uppercased()) {
                let name = "perdun"
                currentUsername = name
            }
        }

    }
}

struct apstot_Previews: PreviewProvider {
    static var previews: some View {
        apstot()
    }
}
