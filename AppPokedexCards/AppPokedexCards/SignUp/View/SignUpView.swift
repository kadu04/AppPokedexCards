//
//  SignUpView.swift
//  AppPokedexCards
//
//  Created by Ricardo Massaki on 05/05/25.
//

import SwiftUI

struct SignUpView: View {
    
    @StateObject var viewModel = SignUpViewModel()
    
    var body: some View {
        VStack {
            Image("image_")
                .resizable()
                .frame(width: 290, height: 290)
                .scaledToFit()
                .padding(.top, -100)
            
            TextField("Entre com seu nome", text: $viewModel.name)
                .autocapitalization(.none)
                .disableAutocorrection(false)
                .padding()
                .background(Color.white)
                .cornerRadius(24.0)
                .overlay(RoundedRectangle(cornerRadius: 24.0)
                    .strokeBorder(Color(UIColor.separator),
                                  style: StrokeStyle(lineWidth: 1.0))
                )
                .padding(.bottom, 8)
            
            TextField("Entre com seu email", text: $viewModel.email)
                .autocapitalization(.none)
                .disableAutocorrection(false)
                .padding()
                .background(Color.white)
                .cornerRadius(24.0)
                .overlay(RoundedRectangle(cornerRadius: 24.0)
                    .strokeBorder(Color(UIColor.separator),
                                  style: StrokeStyle(lineWidth: 1.0))
                )
                .padding(.bottom, 8)
            
            SecureField("Entre com sua senha", text: $viewModel.password)
                .autocapitalization(.none)
                .disableAutocorrection(false)
                .padding()
                .background(Color.white)
                .cornerRadius(24.0)
                .overlay(RoundedRectangle(cornerRadius: 24.0)
                    .strokeBorder(Color(UIColor.separator),
                                  style: StrokeStyle(lineWidth: 1.0))
                )
                .padding(.bottom, 30)
            
            if viewModel.isLoading {
                ProgressView()
                    .padding()
            }
            
            Button {
                viewModel.signUp()
            } label: {
                Text("Salvar")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color("AzulEscuro"))
                    .foregroundColor(.white)
                    .cornerRadius(24.0)
            }
            .alert(isPresented: $viewModel.formInvalid) {
                Alert(title: Text(viewModel.alertText))
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding(.horizontal, 32)
        .background(Color.init(red: 240 / 255, green: 231 / 255, blue: 210 / 255))
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    SignUpView()
}
