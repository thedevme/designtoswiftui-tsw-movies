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
        Text("Ticket Row Item")
    }
    
    
}

struct TicketRowItem_Previews: PreviewProvider {
    static var previews: some View {
        TicketRowItem(cartItem: CartItem.default)
    }
}
