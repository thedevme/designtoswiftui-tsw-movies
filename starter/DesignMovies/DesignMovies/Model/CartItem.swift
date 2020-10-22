//
//  CartItem.swift
//  DesignMovies
//
//  Created by Craig Clayton on 10/15/20.
//

import SwiftUI

struct CartItem {
    var id = UUID().uuidString
    var item: ShopItem
    var quantity: Int
    
    static let `default` = Self(item: .default, quantity: 1)
}
