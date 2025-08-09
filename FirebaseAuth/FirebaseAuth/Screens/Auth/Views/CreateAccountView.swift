//
//  CreateAccountView.swift
//  FirebaseAuth
//
//  Created by Subhajit Biswas on 09/08/25.
//

import SwiftUI

struct CreateAccountView: View {
    @State private var email: String = ""
    @State private var fullName: String = ""
    @State private var password: String = ""
    @State private var confirmPassword: String = ""
    
    var body: some View {
        VStack {
            Text("Please fill bellow all the information to create an Account")
                .font(.headline).fontWeight(.medium)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.vertical)
            
            InputView(
                placeHolder: "Email or Phone number",
                text: $email
            )
            
            InputView(
                placeHolder: "Full Name",
                text: $fullName
            )
            
            InputView(
                placeHolder: "Password",
                isSecureField: true,
                text: $password
            )
            
            ZStack(alignment: .trailing) {
                InputView(
                    placeHolder: "confirm your password",
                    isSecureField: true,
                    text: $confirmPassword
                )
            
                Spacer()
                
                if !password.isEmpty && !confirmPassword.isEmpty {
                    Image(systemName: "\(isValidPassword ? "checkmark" : "xmark").circle.fill")
                        .imageScale(.large)
                        .fontWeight(.bold)
                        .foregroundColor(isValidPassword ? Color(.systemGreen) : Color(.systemRed))
                }
            }
            
            Spacer()
            
            Button {
                
            } label: {
                Text("Create Account")
            }
            .buttonStyle(CapsuleButtonStyle())
        }.navigationTitle("Setup your Account")
            .toolbarRole(.editor)
            .padding()
    }
    
    var isValidPassword: Bool {
        confirmPassword == password
    }
}

#Preview {
    CreateAccountView()
}
