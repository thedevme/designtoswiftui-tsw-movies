//
//  LoveSeatButtonView.swift
//  DesignMovies
//
//  Created by Craig Clayton on 9/30/20.
//

import SwiftUI

enum SeatType: String {
    case left
    case right
    case single
    case handicap
}

struct LoveSeatButtonView: View {
    @Binding var isLeftSideChecked: Bool
    @Binding var isRightSideChecked: Bool
    
    var side: SeatType = .left
    
    var body: some View {
        ZStack {
            Button(action: {
                isLeftSideChecked.toggle()
            }) {
                Toggle("Selected", isOn: $isLeftSideChecked)
            }
            .opacity(side == .left ? 1 : 0)
            .buttonStyle(PlainButtonStyle())
            .toggleStyle(LeftSeatToggleStyle())
            
            Button(action: {
                isRightSideChecked.toggle()
            }) {
                Toggle("Selected", isOn: $isRightSideChecked)
            }
            .opacity(side == .right ? 1 : 0)
            .buttonStyle(PlainButtonStyle())
            .toggleStyle(RightSeatToggleStyle())
        }
    }
}

struct LoveSeatButtonView_Previews: PreviewProvider {
    static var previews: some View {
        LoveSeatButtonView(isLeftSideChecked: .constant(true),
                          isRightSideChecked: .constant(false))
    }
}


struct LoveSeat: View {
    
    @State private var isLeftSideChecked = false
    @State private var isRightSideChecked = false
    
    var body: some View {
        HStack(spacing: 1) {
            LoveSeatButtonView(isLeftSideChecked: $isLeftSideChecked, isRightSideChecked: $isRightSideChecked, side: .left)
            
            LoveSeatButtonView(isLeftSideChecked: $isLeftSideChecked, isRightSideChecked: $isRightSideChecked, side: .right)
        }
    }
}
