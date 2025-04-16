//
//  ContentView.swift
//  SampleiOSApp
//
//  Created by Girish on 03/04/25.
//  Copyright © 2025 Girish. All rights reserved.
//

import SwiftUI

struct LoginScreen: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var navigateToHome: Bool = false
    @State private var showError: Bool = false
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Text("Login")
                    .font(.system(size: 24))
                    .fontWeight(.bold)
                    
                
                VStack {
                    // Email Text Input
                    TextField("Email", text: $email)
                        .padding(4.0)
                        .border(Color.gray)
                        .autocapitalization(.none)
                        .accessibilityIdentifier("txtEmail")
                    
                    // Password Text Input
                    SecureField("Password", text: $password)
                        .padding(4.0)
                        .border(Color.gray)
                        .accessibilityIdentifier("txtPassword")
                    
                    // Navigation: Home
                    NavigationLink(destination: HomeScreen(), isActive: $navigateToHome) {
                        EmptyView()
                    }
                        
                    // Sign In button
                    Button("Sign In") {
                        if email.isEmpty || password.isEmpty {
                            showError = true
                        } else {
                            navigateToHome = true
                        }
                    }
                    .padding(10)
                }
                .alert(isPresented: $showError) {
                    Alert(title: Text("Error"), message: Text("Please enter email and password"), dismissButton: .default(Text("OK")))
                }
            }
            .padding(20.0)
            .navigationBarTitle(Text("My App"))
        }
    }
}

enum ErrorMessage: String {
    case incorrectEmailOrPassword = "Incorrect email or password"
    case serverError = "Server error"
    
    func title() -> String {
        self.rawValue
    }
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}
