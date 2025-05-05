//
//  SplashView.swift
//  AppPokedexCards
//
//  Created by Ricardo Massaki on 05/05/25.
//

import SwiftUI

struct SplashView: View {
    
    @StateObject var viewModel = SplashViewModel()
    
    @State private var isActive = false
    
    var body: some View {
        if isActive {
            SignInView()
        } else {
            ZStack {
                Color("AzulBackground")
                Image("Pokeball")
            }
            .ignoresSafeArea()
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    self.isActive = true
                }
            }
        }
    }
}

#Preview {
    SplashView()
}
