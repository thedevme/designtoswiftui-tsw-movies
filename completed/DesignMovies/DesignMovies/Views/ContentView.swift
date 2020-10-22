//
//  ContentView.swift
//  DesignMovies
//
//  Created by Craig Clayton on 9/22/20.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            TicketingView()
                .tabItem {
                    Image(systemName: "ticket")
                    Text("Tickets")
                }
            
            SeatSelectionView()
                .tabItem {
                    Image(systemName: "hand.tap")
                    Text("Seat Selection")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

