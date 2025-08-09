//
//  InputView.swift
//  FirebaseAuth
//
//  Created by Subhajit Biswas on 09/08/25.
//

import SwiftUI

struct InputView: View {
    let placeHolder: String
    var isSecureField: Bool = false
    @Binding var text: String
    var body: some View {
        VStack(spacing: 12) {
            if isSecureField {
                SecureField(placeHolder, text: $text)
            } else {
                TextField(placeHolder, text: $text) 
            }
            
            Divider()
        }
    }
}

#Preview {
    InputView(placeHolder: "Enter Email or Phone number", text: .constant(""))
}
