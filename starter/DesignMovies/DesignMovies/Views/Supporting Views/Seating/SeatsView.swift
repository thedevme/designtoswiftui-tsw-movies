//
//  SeatsView.swift
//  DesignMovies
//
//  Created by Craig Clayton on 10/1/20.
//

import SwiftUI

struct SeatsView: View {
    
    @State var show = false
    
    var body: some View {
        if UIDevice.current.userInterfaceIdiom == .phone {
            content
        } else {
            ZStack(alignment: Alignment(horizontal: .center, vertical: .top)) {

                Color(.baseBackground).edgesIgnoringSafeArea(.all)
                
                VStack {
                    ScrollView(showsIndicators: false) {
                        SeatSelectionView()
                            .padding(.bottom, 40)
                    }
                    .padding(.top, 30)
                    
                    
                    Spacer()
                    
                   
                }
            }
        }
    }
    
    var content: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .top)) {

            Color(.baseBackground).edgesIgnoringSafeArea(.all)

            VStack {
                ScrollView(showsIndicators: false) {
                    SeatSelectionView()
                        .padding(.bottom, 40)
                }
                .padding(.top, 30)
                
                
                Spacer()
                
//                ProgressView()
//                    .padding(.horizontal)
//                    .padding(.bottom, 10)
            }
            
            VStack {
                Spacer()
                SummaryView(show: self.$show)
                    .offset(y: self.show ? (UIApplication.shared.windows.last?.safeAreaInsets.bottom)! + 15 : UIScreen.main.bounds.height)

            }
        }
        .animation(.default)
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .principal) {
                HStack(spacing: 5) {
                    Text("SELECT").custom(font: .bold, size: 18)
                    Text("SEATS").custom(font: .ultralight, size: 18)
                }.foregroundColor(.baseText)
            }
        }
    }
}

struct SeatsView_Previews: PreviewProvider {
    static var previews: some View {
        SeatsView()
    }
}
