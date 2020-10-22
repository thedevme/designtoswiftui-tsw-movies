//
//  DesignMoviesApp.swift
//  DesignMovies
//
//  Created by Craig Clayton on 9/22/20.
//

import SwiftUI

@main
struct DesignMoviesApp: App {

    init() {
        for family in UIFont.familyNames {
            let sName: String = family as String
            print("family: \(sName)")
                    
            for name in UIFont.fontNames(forFamilyName: sName) {
                print("name: \(name as String)")
            }
        }
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
