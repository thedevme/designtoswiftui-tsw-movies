//
//  AddToCartButton.swift
//  DesignMovies
//
//  Created by Craig Clayton on 9/24/20.
//

import SwiftUI

struct AddToCartButton: View {
    var body: some View {
        HStack(spacing: 0) {
            Text("ADD")
                .custom(font: .heavy, size: 18)
            Text("TICKET")
                .custom(font: .regular, size: 18)
        }.padding(.horizontal, 20)
        .padding(.vertical, 8)
        .background(Color.baseButton)
        .buttonStyle(PlainButtonStyle())
        .overlay(
            RoundedRectangle(cornerRadius: 4)
                .stroke(Color.baseButtonBorder, lineWidth: 1))
        
    }
}

struct AddToCartButton_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartButton()
    }
}
