//
//  StepperView.swift
//  DesignMovies
//
//  Created by Craig Clayton on 9/24/20.
//

import SwiftUI

struct ShopItem: Identifiable, Equatable {
    var price: Double
    var id = UUID().uuidString
    var name: String
    
    static let `default` = Self(price: 9.99, name: "CHILD")
}

struct CartItem {
    var id = UUID().uuidString
    var item: ShopItem
    var quantity: Int
    
    static let `default` = Self(item: .default, quantity: 1)
}

struct StepperView: View {
    @Binding var items: Dictionary<String, CartItem>
    
    var item: CartItem
    
    var body: some View {
        HStack(spacing: 15) {
            Button(action: {
                items[self.item.id]!.quantity -= 1

                if self.items[self.item.id]!.quantity == 0 {
                    self.items[self.item.id] = nil
                }
            }) {
                ZStack {
                    RoundedRectangle(cornerRadius: 4)
                        .fill(Color.baseButton)
                        .frame(width:25, height: 25)
                    
                    Image(systemName: "minus")
                }.padding(.horizontal, 5)
            }
            .background(Color.baseButton)
            .buttonStyle(PlainButtonStyle())
            .overlay(
                RoundedRectangle(cornerRadius: 4)
                    .stroke(Color.baseButtonBorder, lineWidth: 1))

            if let quantity = items[item.id]?.quantity {
                Text(quantity == 0 ? "0" : "\(quantity)")
                    .custom(font: .bold, size: 24)
            }
            
            
            Button(action: { self.items[self.item.id]!.quantity += 1 }) {
                ZStack {
                    RoundedRectangle(cornerRadius: 4)
                        .fill(Color.baseButton)
                        .frame(width:25, height: 25)
                    
                    Image(systemName: "plus")
                }.padding(.horizontal, 5)
            }
            .background(Color.baseButton)
            .buttonStyle(PlainButtonStyle())
            .overlay(
                RoundedRectangle(cornerRadius: 4)
                    .stroke(Color.baseButtonBorder, lineWidth: 1))
        }
    }
}
