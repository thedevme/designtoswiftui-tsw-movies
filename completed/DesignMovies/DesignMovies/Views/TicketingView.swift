//
//  TicketingView.swift
//  DesignMovies
//
//  Created by Craig Clayton on 9/23/20.
//

import SwiftUI

struct TicketingView: View {
    var body: some View {
        VStack(spacing: 0) {
            VStack {
                MovieDetailView()
                    .padding(.bottom, 20)
                TicketsView()
            }
            .padding(.horizontal)
            .padding(.top, 100)
            .background(Color.baseBackground)
            
            Spacer()
            
            CheckoutProgressView()
        }
        .background(Color.baseBackground)
        .edgesIgnoringSafeArea(.all)
    }
    
    var header: some View {
        HStack(spacing: 0) {
            Text("SELECT").custom(font: .bold, size: 18)
            Text("TICKETS").custom(font: .ultralight, size: 18)
        }.foregroundColor(.baseText)
    }
}

struct TicketingView_Previews: PreviewProvider {
    static var previews: some View {
        TicketingView()
    }
}
