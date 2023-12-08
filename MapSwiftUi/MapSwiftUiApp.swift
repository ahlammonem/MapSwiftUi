//
//  MapSwiftUiApp.swift
//  MapSwiftUi
//
//  Created by ahlam on 07/12/2023.
//

import SwiftUI

@main
struct MapSwiftUiApp: App {
    
    @StateObject private var viewModel = LocationsViewModel()
    
    var body: some Scene {
        WindowGroup {
            LocationsView()
                .environmentObject(viewModel)
        }
    }
}
