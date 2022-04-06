//
//  LandmarksApp.swift
//  Shared
//
//  Created by Piyush Porwal on 23/03/22.
//

import SwiftUI

@main
struct LandmarksApp: App {
    
    @StateObject private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
