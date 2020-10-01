//
//  SummaryItemView.swift
//  DesignMovies
//
//  Created by Craig Clayton on 9/30/20.
//

import SwiftUI

struct SummaryItemView: View {
    var body: some View {
        HStack {
            Text("Reserved Loveset For Two")
                .custom(font: .regular, size: 18)
                .multilineTextAlignment(.leading)
                .lineLimit(2)
            
            Spacer(minLength: 20)
            HStack(spacing: 1) {
                Image("loveseat-unavailable-left")
                Image("loveseat-unavailable-right")
            }
            HStack(alignment: .center , spacing: 0) {
                Text("X")
                    .offset(y: 4)
                
                Text("99")
                    .custom(font: .bold, size: 32)
            }
        }
    }
}

struct SummaryItemView_Previews: PreviewProvider {
    static var previews: some View {
        SummaryItemView()
    }
}
