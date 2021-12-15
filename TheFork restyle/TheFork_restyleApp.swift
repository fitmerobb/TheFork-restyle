//
//  TheFork_restyleApp.swift
//  TheFork restyle
//
//  Created by Roberto La Croce on 09/12/21.
//

import SwiftUI

@main
struct TheFork_restyleApp: App {
    

    
    init() {
        UINavigationBar.appearance().backgroundColor = UIColor(red: 89/255, green: 147/255, blue: 63/255, alpha: 1)// UTILISSIMOOOOOOOO
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.white]
        UINavigationBar.appearance().barTintColor = UIColor(red: 89/255, green: 147/255, blue: 63/255, alpha: 1)
        UINavigationBar.appearance().isTranslucent = true
       }
    

    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
