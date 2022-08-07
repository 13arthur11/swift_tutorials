//
//  modelings.swift
//  calca
//
//  Created by Артур on 10.08.2021.
//

import SwiftUI

struct userModel: Identifiable {
    let id: String = UUID().uuidString
    let displayName: String
    let username: String
    let followers: Int
    var isVerified: Bool
}

struct modelings: View {
    
    @State var users: [userModel] = [
//        "arthur", "egor", "nick", "emily"
        userModel(displayName: "Nick", username: "nick123", followers: 100, isVerified: true),
        userModel(displayName: "Arthur", username: "Arthur228", followers: 666, isVerified: true),
        userModel(displayName: "Emily", username: "Ninja", followers: 350, isVerified: false),
        userModel(displayName: "Chris", username: "nagibato_2006", followers: 206, isVerified: true)
    ]
    var body: some View {
        NavigationView{
            List{
                ForEach(users) { user in
                    HStack(spacing: 15.0) {
                        Circle()
                            .frame(width: 35, height: 35)
                        VStack(alignment: .leading) {
                            HStack(spacing: 2){
                            Text(user.displayName)
                                .font(.headline)
                                if user.isVerified {
                                    Image(systemName: "checkmark.seal.fill")
                                        .foregroundColor(.blue)
                                        .offset(x: 0, y: -2)
                                }
                            }
                            Text("@\(user.username)")
                                .font(.caption)
                        }
                        Spacer()
                        VStack{
                            Text("\(user.followers)")
                            Text("Followers")
                        }
                    }
                    .padding(.vertical, 25)
                }

            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Users")
        }
    }
}

struct modelings_Previews: PreviewProvider {
    static var previews: some View {
        modelings()
    }
}
