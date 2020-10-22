//
//  Palette+Color.swift
//  Financial App
//
//  Created by Craig Clayton on 11/20/19.
//  Copyright © 2019 Cocoa Academy. All rights reserved.
//

import SwiftUI
import Foundation

extension Color {
    static let baseBackground = Color("baseBackground")
    static let baseButton = Color("baseButton")
    static let baseButtonBorder = Color("baseButtonBorder")
    static let baseIndicator = Color("baseIndicator")
    static let baseIndicatorSelected = Color("baseIndicatorSelected")
    static let baseSecondaryBackground = Color("baseSecondaryBackground")
    static let baseText = Color("baseText")
    static let baseAccent = Color("baseAccent")
    static let baseAccentText = Color("baseAccentText")
}

extension UIColor {
    static let baseBackground = Color(named: "baseBackground")
    static let baseButton = Color(named: "baseButton")
    static let baseButtonBorder = Color(named: "baseButtonBorder")
    static let baseIndicator = Color(named: "baseIndicator")
    static let baseIndicatorSelected = Color(named: "baseIndicatorSelected")
    static let baseSecondaryBackground = Color(named: "baseSecondaryBackground")
    static let baseText = Color(named: "baseText")
    static let baseAccent = Color(named: "baseAccent")
    static let baseAccentText = Color(named: "baseAccentText")

    private static func Color(named key: String) -> UIColor {
       if let color = UIColor(named: key, in: .main, compatibleWith: nil) {
           return color
       }

       return .black
    }
}
