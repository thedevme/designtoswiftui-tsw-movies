//
//  SeatSelectionView.swift
//  DesignMovies
//
//  Created by Craig Clayton on 9/23/20.
//

import SwiftUI

struct SeatSelectionView: View {
    @State var show = false
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    let frontRow = Array(repeating: GridItem(.fixed(108), spacing: 20.0, alignment: .top), count: 4)
    let secondRow = Array(repeating: GridItem(.fixed(108), spacing: 20.0, alignment: .top), count: 5)
    let backGrid = [GridItem(.fixed(108), spacing: 20.0, alignment: .top)]
    let handicapSeats = [
        "wheelchair-unavailable",
        "wheelchair-guest-selected",
        "wheelchair-unavailable",
        "wheelchair-unavailable",
        "wheelchair-guest-selected",
        "wheelchair-unavailable"
    ]
    
    let comfortPlusGrid = [
            GridItem(.fixed(51.0), spacing: 20.0, alignment: .top),
            GridItem(.fixed(51.0), spacing: 20.0, alignment: .top),
            GridItem(.fixed(51.0), spacing: 106.0, alignment: .top),
            GridItem(.fixed(51.0), spacing: 20.0, alignment: .top),
            GridItem(.fixed(51.0), spacing: 20.0, alignment: .top),
            GridItem(.fixed(51.0), spacing: 20.0, alignment: .top)
    ]
    
    var body: some View {
        
        if UIDevice.current.userInterfaceIdiom == .phone {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    VStack {
                        screen
                        seats
                    }
                }
            }
        } else {
            ZStack(alignment: Alignment(horizontal: .center, vertical: .top)) {

                Color(.baseBackground).edgesIgnoringSafeArea(.all)

                VStack {
                    ScrollView(showsIndicators: false) {
                        SeatsView()
                            .padding(.bottom, 40)
                        
                    }
                    .padding(.top, 30)
                    
                }
            }
            .animation(.default)
        }
    }
    
    var screen: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .top)) {
            Image("screen")
                .resizable()
                .frame(width: 569, height: 33)
            Text("SCREEN")
                .custom(font: .bold, size: 19)
                .foregroundColor(.baseText)
            
        }
        .padding(.bottom, 60)
    }
    
    var seats: some View {
        VStack(spacing: 30) {
            LazyVGrid(columns: frontRow, alignment: .center, spacing: 20) {
                ForEach(0 ..< frontRow.count) { item in
                    LoveSeat()
                }
            }.padding(.leading, 50)

            LazyVGrid(columns: secondRow, alignment: .center, spacing: 20) {
                ForEach(0 ..< secondRow.count) { item in
                    LoveSeat()
                }
            }.padding(.bottom, 40)

            LazyVGrid(columns: comfortPlusGrid, alignment: .center, spacing: 20) {
                ForEach(0 ..< comfortPlusGrid.count) { item in
                    Image("\(handicapSeats[item])")
                        .resizable()
                        .frame(width: 51, height: 57)
                }
            }

            LazyHGrid(rows: Array(repeating: .init(.fixed(30), spacing: 40, alignment: .center), count: 3), alignment: .center, spacing: 20) {
                ForEach(0 ..< 12) { item in
                    LoveSeat()
                }
            }.padding(.bottom, 15)
        }
    }
}

struct SeatSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        SeatSelectionView()
    }
}
//            HStack {
//                VStack {
//                    screen
//                    seats
//                }
//            }
            
