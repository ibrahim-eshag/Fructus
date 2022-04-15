//
//  FructusApp.swift
//  Fructus
//
//  Created by Amged on 2/19/22.
//

import SwiftUI

// MARK: - The @main is property added to Swidt 5.3 to allow a type to serve as an entery point
// for the app execusioon instate of the main function by Swift


@main
struct FructusApp: App {
    // using the AppStorage property wrapper to store the state of the app
    // it usually uses the uderDefaults
    // when moving on, you can't go back again; it's not a normal Navigation
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
