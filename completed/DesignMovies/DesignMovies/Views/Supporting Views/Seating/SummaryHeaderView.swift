//
//  SummaryHeaderView.swift
//  DesignMovies
//
//  Created by Craig Clayton on 9/30/20.
//

import SwiftUI

struct SummaryHeaderView: View {
    var body: some View {
        HStack {
            HStack(alignment: .center) {
                Spacer()
                
                Text("PRICE")
                    .frame(alignment: .center)
                    .multilineTextAlignment(.center)
                    .custom(font: .bold, size: 20)
                    .foregroundColor(.baseAccentText)
                
                Spacer()
            }
            .padding(.vertical, 7)
        }.padding(.horizontal, 10)
        .background(Color.baseAccent)
        .cornerRadius(10, corners: [.topLeft, .topRight])
    }
}

struct SummaryHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        SummaryHeaderView()
    }
}
