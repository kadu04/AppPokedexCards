//
//  AppPokedexCardsApp.swift
//  AppPokedexCards
//
//  Created by Ricardo Massaki on 05/05/25.
//

import SwiftUI
import Firebase

@main
struct AppPokedexCardsApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            SignInView()
        }
    }
}
