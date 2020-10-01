//
//  TicketingView.swift
//  DesignMovies
//
//  Created by Craig Clayton on 9/23/20.
//

import SwiftUI

struct TicketingView: View {
    var body: some View {
        ScrollView {
            VStack {
                HeaderView()
                MovieDetailView()
            }
        }
    }
}

struct TicketingView_Previews: PreviewProvider {
    static var previews: some View {
        TicketingView()
    }
}
