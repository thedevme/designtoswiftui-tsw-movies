//
//  TicketsView.swift
//  DesignMovies
//
//  Created by Craig Clayton on 9/23/20.
//

import SwiftUI

struct TicketsView: View {
    
    var body: some View {
        VStack(spacing: 0) {
            TicketRowHeader()
            VStack {
                ForEach(0..<MockDataPreviewService.items.count) { index in
                    TicketRowItem(cartItem: MockDataPreviewService.items[index]).padding(.horizontal, 10)
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
    }
}
