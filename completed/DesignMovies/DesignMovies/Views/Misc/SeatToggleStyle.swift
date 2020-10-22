//
//  SeatToggleStyle.swift
//  DesignMovies
//
//  Created by Craig Clayton on 9/30/20.
//

import SwiftUI

struct LeftSeatToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        ZStack {
            configuration.label.hidden()
            Image(configuration.isOn ? "loveseat-selected-left" : "loveseat-available-left")
        }.frame(width: 53, height: 47)
    }
}

struct RightSeatToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        ZStack {
            configuration.label.hidden()
            Image(configuration.isOn ? "loveseat-selected-right" : "loveseat-available-right")
        }.frame(width: 53, height: 47)
    }
}

struct SeatToggleStyle: ToggleStyle {
    var width: CGFloat
    var height: CGFloat
    
    func makeBody(configuration: Configuration) -> some View {
        ZStack {
            configuration.label.hidden()
            Image(configuration.isOn ? "seat-selected" : "seat-available")
                .resizable()
                .frame(width: width, height: height)
        }
        
    }
}
