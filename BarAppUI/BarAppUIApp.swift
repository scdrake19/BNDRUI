//
//  BarAppUIApp.swift
//  BarAppUI
//
//  Created by Steven Drake on 1/4/21.
//

import SwiftUI

@main
struct BarAppUIApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(UserParser())
                .environmentObject(HomeParser())
                .environmentObject(Parser())
        }
    }
}
