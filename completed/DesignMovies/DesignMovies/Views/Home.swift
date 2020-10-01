//
//  Home.swift
//  DesignMovies
//
//  Created by Craig Clayton on 9/23/20.
//

import SwiftUI

struct Home : View {
    
    var body: some View {
        VStack(spacing: 0) {
            ScrollView {
                VStack {
                    MovieDetailView().padding(.bottom, 20)
                    TicketsView()
                }
                .padding(.horizontal)
                .padding(.top, 20)
                .background(Color.baseBackground)
                Spacer()
            }
        }
        .background(Color.baseBackground.edgesIgnoringSafeArea(.bottom))
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .principal) {
                header
            }
        }
    }
    
    var header: some View {
        HStack(spacing: 0) {
            Text("SELECT").custom(font: .bold, size: 18)
            Text("TICKETS").custom(font: .ultralight, size: 18)
        }.foregroundColor(.baseText)
    }
}


struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
