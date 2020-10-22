//
//  SummaryView.swift
//  DesignMovies
//
//  Created by Craig Clayton on 9/30/20.
//

import SwiftUI

struct SummaryView: View {
    let count = 3
    @Binding var show : Bool
    
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                HStack(alignment: .center) {
                    Text("SUMMARY")
                        .frame(alignment: .center)
                        .multilineTextAlignment(.center)
                        .custom(font: .bold, size: 20)
                        .foregroundColor(.baseAccentText)
                    Spacer()
                    
                    HStack {
                        Spacer()
                        Button(action: { self.show.toggle() }) {
                            Text("Continue")
                        }
                    }
                }
                .padding(.vertical, 7)
            }
            .padding(.horizontal, 10)
            .background(Color.baseAccent)
            .cornerRadius(10, corners: [.topLeft, .topRight])
            
            VStack(spacing: 10) {
                ForEach(0..<count) { index in
                    SummaryItemView().padding(.horizontal, 5)
                    if index != count-1 {
                        Divider().padding(.horizontal, 5)
                    }
                }
            }
            .padding(.vertical)
            .padding(.bottom, 100)
            .background(Color.baseSecondaryBackground)
            .cornerRadius(10, corners: [.bottomLeft, .bottomRight])
        }
    }
}

struct SummaryView_Previews: PreviewProvider {
    static var previews: some View {
        SummaryView(show: .constant(false))
    }
}
