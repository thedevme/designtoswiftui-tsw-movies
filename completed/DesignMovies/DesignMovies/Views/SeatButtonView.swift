//
//  SeatButtonView.swift
//  DesignMovies
//
//  Created by Craig Clayton on 10/15/20.
//

import SwiftUI


struct Seat {
    let row: Int
    let seat: String
}


struct SeatButtonView: View {
    @State private var isChecked = false
    var data: Seat
    var width: CGFloat
    var height: CGFloat
    
    var body: some View {
        ZStack {
            available
                .frame(width: width, height: height)
        }
    }
    
    var available: some View {
        ZStack {
            Button(action: {
                isChecked.toggle()
            }) {
                Toggle("Selected", isOn: $isChecked)
            }
            .buttonStyle(PlainButtonStyle())
            .toggleStyle(SeatToggleStyle(width: width, height: height))
            
            Text("\(data.seat)\(data.row)")
                .foregroundColor(isChecked ? .white : .black)
                .custom(font: .heavy, size: 16)
                .offset(y: -8)
        }
    }
    
    func randomBool() -> Bool {
        return arc4random_uniform(2) == 0
    }
}

struct SeatButtonView_Previews: PreviewProvider {
    static var previews: some View {
        SeatButtonView(data: Seat(row: 1, seat: "A"), width: 51, height: 57)
    }
}
