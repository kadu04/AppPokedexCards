//
//  SplashViewModel.swift
//  AppPokedexCards
//
//  Created by Ricardo Massaki on 05/05/25.
//

import Foundation
import FirebaseAuth

class SplashViewModel: ObservableObject {
    
    @Published var isLogged = Auth.auth().currentUser != nil 
}
