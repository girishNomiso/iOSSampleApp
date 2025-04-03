//
//  ContentView.swift
//  SampleiOSApp
//
//  Created by Girish on 03/04/25.
//  Copyright © 2025 Girish. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Sample App")
                TextField("Email", text: $email)
                SecureField("Password", text: $password)
                
                NavigationLink(destination: Text("Home")) {
                    Text("Login")
                }
            }
            .padding(10.0)
            .navigationBarTitle(Text("Landmarks"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
