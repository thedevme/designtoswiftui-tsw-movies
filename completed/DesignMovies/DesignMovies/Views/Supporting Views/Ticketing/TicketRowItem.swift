//
//  TicketRowItem.swift
//  DesignMovies
//
//  Created by Craig Clayton on 9/24/20.
//

import SwiftUI

struct TicketRowItem: View {
    let cartItem: CartItem
    
    var body: some View {
        HStack {
            HStack {
                type
                Spacer()
                price
                Spacer()
                AddToCartButton()
            }.frame(height: 60)

        }
    }
    
    var type: some View {
        ZStack {
            Text(cartItem.item.name)
                .frame(alignment: .center)
                .multilineTextAlignment(.center)
                .custom(font: .regular, size: 18)
                .foregroundColor(.baseText)
        }.frame(minWidth: 50)
    }
    
    var price: some View {
        ZStack {
            Text("$\(cartItem.item.price, specifier: "%.2f")")
                .frame(alignment: .trailing)
                .multilineTextAlignment(.trailing)
                .custom(font: .bold, size: 18)
                .foregroundColor(.baseText)
        }.frame(minWidth: 100)
    }
}

struct TicketRowItem_Previews: PreviewProvider {
    static var previews: some View {
        TicketRowItem(cartItem: CartItem.default)
    }
}
