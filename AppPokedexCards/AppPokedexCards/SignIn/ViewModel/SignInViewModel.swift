//
//  SignInViewModel.swift
//  AppPokedexCards
//
//  Created by Ricardo Massaki on 05/05/25.
//

import Foundation

class SignInViewModel: ObservableObject {
    
    @Published var email = ""
    @Published var password = ""
    
    func signIn() {
        print("email: \(email), password: \(password)")
    }
}
