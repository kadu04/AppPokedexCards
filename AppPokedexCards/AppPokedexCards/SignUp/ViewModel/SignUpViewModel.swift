//
//  SignUpViewModel.swift
//  AppPokedexCards
//
//  Created by Ricardo Massaki on 05/05/25.
//

import Foundation

class SignUpViewModel: ObservableObject {
    
    @Published var name: String = ""
    @Published var email: String = ""
    @Published var password: String = ""
    
    func signUp() {
        print("nome: \(name), email: \(email), senha: \(password)")
    }
}
