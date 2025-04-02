//
//  LoginScreen.swift
//  TodoDemoApp
//
//  Created by Girish Chauhan on 01/04/25.
//

import SwiftUI

struct LoginScreen: View {
    @State private var email: String = "abc@mail.com"
    @State private var password: String = "pass"
    @State private var isLoggedIn: Bool = false
    @State private var invalidCredential: Bool = false
    @State private var alertMessage: String = ""
    @State private var showAlert: Bool = false
    @State private var navigateToHome: Bool = false
    
    private let validEmail = "abc@mail.com"
    private let validPassword = "pass"
    
    var body: some View {
        NavigationStack {
            Text("Login")
                .fontWeight(.heavy)
                .foregroundStyle(.blue)
            
            VStack(alignment: .center, spacing: 10) {
                TextField("Email", text: $email)
                    .padding(10)
                    .border(.secondary)
                
                SecureField("Password", text: $password)
                    .padding(10)
                    .border(.secondary)
                
                Button(action: {
                    // Check credentials and decide navigation
                   if email == validEmail && password == validPassword {
                       navigateToHome = true
                   } else {
                       alertMessage = "Invalid credentials"
                       showAlert = true
                   }
                }) {
                    Text("Submit")
                       .fontWeight(.bold)
                       .foregroundStyle(.white)
                       .padding(10)
                       .background(.blue)
                }
            }
            .padding(20)
            .alert(isPresented: $showAlert) {
                Alert(title: Text("Login Status"), message: Text("Invalid Credentials"), dismissButton: .default(Text("OK")))
            }
            .navigationDestination(isPresented: $navigateToHome) {
                HomeScreen()
            }
            
            
//            NavigationLink(destination: HomeScreen(), isActive: $navigateToHome) {
//                EmptyView()
//            }
        }
        
    }
}

#Preview {
    LoginScreen()
}
