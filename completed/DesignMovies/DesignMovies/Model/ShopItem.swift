//
//  ShopItem.swift
//  DesignMovies
//
//  Created by Craig Clayton on 10/15/20.
//

import SwiftUI

struct ShopItem: Identifiable, Equatable {
    var price: Double
    var id = UUID().uuidString
    var name: String
    
    static let `default` = Self(price: 9.99, name: "CHILD")
}
