//
//  ShoppingCart.swift
//  DesignMovies
//
//  Created by Craig Clayton on 10/1/20.
//

import Foundation
import Combine


class ShoppingCart: ObservableObject {
    
    @Published var quantity: Int = 0
    @Published var cartTotal: Double = 0
    @Published var items: Dictionary<String, CartItem> = [:]
    
    
    var total: Double {
        if items.count > 0 {
            var amount: Double = 0
            
            for item in items {
                let price = item.value.item.price
                let quant = item.value.quantity
                
                amount += price * Double(quant)
            }
            
            return amount
            
        } else {
            return 0
        }
    }
    
    func toggleCart(cartItem: CartItem) {
        if items[cartItem.id] == nil {
            items[cartItem.id] = CartItem(item: cartItem.item, quantity: 1)
        } else {
            items[cartItem.id] = nil
        }
    }
    
    func inCart(item: CartItem) -> Bool {
        return items[item.id] != nil
    }
}
