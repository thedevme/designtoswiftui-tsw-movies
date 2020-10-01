//
//  TicketRowItem.swift
//  DesignMovies
//
//  Created by Craig Clayton on 9/24/20.
//

import SwiftUI

struct TicketRowItem: View {
    @EnvironmentObject var shoppingCart: ShoppingCart
    let cartItem: CartItem
    
    var body: some View {
        HStack {
            HStack {
                ZStack {
                    Text(cartItem.item.name)
                        .frame(alignment: .center)
                        .multilineTextAlignment(.center)
                        .custom(font: .regular, size: 18)
                        .foregroundColor(.baseText)
                }.frame(minWidth: 50)
                
                Spacer()
                
                ZStack {
                    Text("$\(cartItem.item.price, specifier: "%.2f")")
                        .frame(alignment: .trailing)
                        .multilineTextAlignment(.trailing)
                        .custom(font: .bold, size: 18)
                        .foregroundColor(.baseText)
                }.frame(minWidth: 100)
                
                Spacer()
                
                HStack(alignment: .center) {
                    if shoppingCart.inCart(item: cartItem) {
                        StepperView(items: self.$shoppingCart.items, item: cartItem)
                    } else {
                        AddToCartButton()
                            .onTapGesture {
                                self.shoppingCart.toggleCart(cartItem: cartItem)
                            }
                    }
                }.frame(minWidth: 50)
            }.frame(height: 60)

        }
    }
}

struct TicketRowItem_Previews: PreviewProvider {
    static var previews: some View {
        TicketRowItem(cartItem: CartItem.default)
    }
}
