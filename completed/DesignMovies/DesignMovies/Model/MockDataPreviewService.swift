//
//  MockPreviewService.swift
//  DesignMovies
//
//  Created by Craig Clayton on 10/15/20.
//

import SwiftUI

struct MockDataPreviewService {
    
    static let frontRow = Array(repeating: GridItem(.fixed(108), spacing: 20.0, alignment: .top), count: 4)
    static let secondRow = Array(repeating: GridItem(.fixed(108), spacing: 20.0, alignment: .top), count: 5)
    static let backGrid = [GridItem(.fixed(108), spacing: 20.0, alignment: .top)]
    static let handicapSeats = [
        "wheelchair-unavailable",
        "wheelchair-guest-selected",
        "wheelchair-unavailable",
        "wheelchair-unavailable",
        "wheelchair-guest-selected",
        "wheelchair-unavailable"
    ]
    
    static let seatRows: [String] = ["A", "B", "C", "D", "E", "F"]
    static let comfortPlusRows = Array(1...3)
    static let comfortPlusGrid = [
            GridItem(.fixed(51.0), spacing: 20.0, alignment: .top),
            GridItem(.fixed(51.0), spacing: 20.0, alignment: .top),
            GridItem(.fixed(51.0), spacing: 106.0, alignment: .top),
            GridItem(.fixed(51.0), spacing: 20.0, alignment: .top),
            GridItem(.fixed(51.0), spacing: 20.0, alignment: .top),
            GridItem(.fixed(51.0), spacing: 20.0, alignment: .top)
    ]
    
    static let items: [CartItem] = [
        CartItem(item: ShopItem(price: 5.58, name: "CHILD"), quantity: 1),
        CartItem(item: ShopItem(price: 6.58, name: "SENIOR"), quantity: 1),
        CartItem(item: ShopItem(price: 7.58, name: "ADULT"), quantity: 1)
    ]
}
