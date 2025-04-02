//
//  TodoDemoAppApp.swift
//  TodoDemoApp
//
//  Created by Girish Chauhan on 24/03/25.
//

import SwiftUI
import SwiftData

@main
struct TodoDemoAppApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            LoginScreen()
//            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
