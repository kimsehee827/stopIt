//
//  GoogleLoginView.swift
//  Front
//
//  Created by 오인경 on 2021/08/17.
//

import SwiftUI
import GoogleSignIn

struct GoogleLoginView: View {
    var body: some View {
        SignInButton()
            .padding()
    }
}

struct SignInButton: UIViewRepresentable {
    func makeUIView(context: Context) -> some GIDSignInButton {
        let button = GIDSignInButton()
        
        return button
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
}

struct GoogleLoginView_Previews: PreviewProvider {
    static var previews: some View {
        GoogleLoginView()
    }
}
