//
//  LoginView.swift
//  FirebaseAuth
//
//  Created by Subhajit Biswas on 09/08/25.
//

import SwiftUI

struct LoginView: View {
    @State var email: String = ""
    @State var password: String = ""
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 16) {
                    // Logo
                    logo
                    // Titile
                    titleView
                    Spacer().frame(height: 12)
                    // TextFields
                    InputView(
                        placeHolder: "Enter Email or Phone number",
                        text: $email
                    )
                    InputView(
                        placeHolder: "Password",
                        isSecureField: true,
                        text: $password
                    )
                    // Forgot button
                    forgotButton
                    // Login Button
                    loginButton
                    Spacer()
                    // Buttom View
                    bottomView
                }
            }.ignoresSafeArea()
                .padding(.horizontal)
                .padding(.vertical, 8)
        }
    }
    
    private var logo: some View {
        Image("login_image")
            .resizable()
            .scaledToFit()
    }
    
    private var titleView: some View {
        Text("Let's Connect With Us!")
            .font(.title2)
            .fontWeight(.semibold)
    }
    
    private var forgotButton: some View {
        HStack {
            Spacer()
            Button {
                
            } label: {
                Text("Forgot password")
                    .foregroundStyle(.gray)
                    .font(.subheadline)
            }
        }
    }
    
    private var loginButton: some View {
        Button {
            
        } label: {
            Text("Login")
        }.buttonStyle(CapsuleButtonStyle())
    }
    
    private var line: some View {
        VStack {
            Divider().frame(height: 1)
        }
    }
    
    private var bottomView: some View {
        VStack(spacing: 16) {
            lineOrView
            appleButton
            googleButton
            footerView
        }
    }
    
    private var lineOrView: some View {
        HStack(spacing: 16) {
            line
            Text("or")
            line
        }
        .foregroundStyle(.gray)
    }
    private var appleButton: some View {
        Button {
            
        } label: {
            Label("Signup with Apple", systemImage: "apple.logo")
        }
        .buttonStyle(CapsuleButtonStyle(bgColor: .black))
    }
    private var googleButton: some View {
        Button {
            
        } label: {
            HStack {
                Image("google")
                    .resizable()
                    .frame(width: 15, height: 15)
                Text("Sing Up with Google")
            }
        }
        .buttonStyle(CapsuleButtonStyle(bgColor: .clear, textColor: .black, hasBorder: true))
        
    }
    private var footerView: some View {
        NavigationLink {
            CreateAccountView()
        } label: {
            HStack {
                Text("Don't have an Account?")
                    .foregroundStyle(.black)
                Text("Signup")
                    .foregroundStyle(.teal)
            }
            .fontWeight(.medium)
        }
    }
}

#Preview {
    LoginView()
}
