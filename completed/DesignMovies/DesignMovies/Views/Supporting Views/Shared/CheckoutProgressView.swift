//
//  CheckoutProgressView.swift
//  DesignMovies
//
//  Created by Craig Clayton on 10/15/20.
//

import SwiftUI

struct CheckoutProgressView: View {
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                Text("SUBTOTAL")
                    .custom(font: .ultralight, size: 42)
                Spacer()
                Text("$99.99")
                    .custom(font: .bold, size: 42)
            }
            
            VStack(spacing: -10) {
                HStack {
                    Text("PICK")
                        .custom(font: .heavy, size: 32)
                    Text("SEATS")
                        .custom(font: .regular, size: 32)
                }
                .frame(minWidth: 0, maxWidth: .infinity)
                .padding(5)
                .background(Color.baseButton)
                .cornerRadius(10)
                .padding(.bottom, 22)
                
                HStack(spacing: 2) {
                    ForEach(0..<4) { index in
                        Rectangle()
                            .fill(index == 0 ? Color.baseIndicatorSelected : Color.baseIndicator)
                            .frame(height: 4)
                    }
                }
            }
        }
        .padding(.horizontal)
        .padding(.bottom, 70)
    }
}

struct CheckoutProgressView_Previews: PreviewProvider {
    static var previews: some View {
        CheckoutProgressView()
    }
}
