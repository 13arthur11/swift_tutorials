//
//  anochApp.swift
//  anoch
//
//  Created by Артур on 12.08.2021.
//

import SwiftUI

@main
struct anochApp: App {
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    var body: some Scene {
        WindowGroup {
            NavigationView{
            ListView()
            }
            .environmentObject(listViewModel)
        }
    }
}
