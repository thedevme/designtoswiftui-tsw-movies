//
//  TicketsView.swift
//  DesignMovies
//
//  Created by Craig Clayton on 9/23/20.
//

import SwiftUI

struct TicketsView: View {
    let items: [CartItem] = [
        CartItem(item: ShopItem(price: 5.58, name: "CHILD"), quantity: 1),
        CartItem(item: ShopItem(price: 6.58, name: "SENIOR"), quantity: 1),
        CartItem(item: ShopItem(price: 7.58, name: "ADULT"), quantity: 1)
    ]
    
    var body: some View {
        VStack(spacing: 0) {
            TicketRowHeader()
            VStack {
                ForEach(0..<items.count) { index in
                    TicketRowItem(cartItem: items[index]).padding(.horizontal, 10)
                }
            }
            .background(Color.baseSecondaryBackground)
            .cornerRadius(10, corners: [.bottomLeft, .bottomRight])
        }
    }
}

struct TicketsView_Previews: PreviewProvider {
    static var previews: some View {
        TicketsView()
            .previewLayout(.fixed(width: 800, height: 400))
    }
}
