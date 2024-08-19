//
//  boardgamecompanionApp.swift
//  boardgamecompanion
//
//  Created by Mauricio Cardozo on 19/08/24.
//

import SwiftUI
import SwiftData

@main
struct boardgamecompanionApp: App {
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
            RootView()
        }
        .modelContainer(sharedModelContainer)
    }
}

import ZombieKit

struct RootView: View {
  var body: some View {
    NavigationStack {
      List {
        NavigationLink("Zombicide") {
          ZombieKit.RootView()
        }
      }
      .navigationTitle("Board Game Companion")
    }
  }
}
