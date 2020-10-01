//
//  ContentView.swift
//  DesignMovies
//
//  Created by Craig Clayton on 9/22/20.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var shoppingCart: ShoppingCart
    @State var show = false
    let item = NavigationItem(destination: SeatsView(), type: .seats)
    
    var body: some View {
        if UIDevice.current.userInterfaceIdiom == .phone {
            NavigationView {
                content
            }
        } else {
            NavigationView {
                content
            }.navigationViewStyle(StackNavigationViewStyle())
        }
    }

    var content: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .top)) {

            Color(.baseBackground).edgesIgnoringSafeArea(.all)

            VStack {
                ScrollView(showsIndicators: false) { Home()
                    .padding(.bottom, 40) }
                    .padding(.top, 30)
                Spacer()
                ProgressView(navigationItem: item, show: $show)
                    .padding(.horizontal)
                    .padding(.bottom, 10)
            }
        }
        .animation(.default)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

