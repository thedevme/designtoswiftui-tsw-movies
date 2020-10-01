//
//  ProgressView.swift
//  DesignMovies
//
//  Created by Craig Clayton on 9/24/20.
//

import SwiftUI

enum NavigationType {
    case seats
    case none
}

struct NavigationItem {
    var destination: Any
    var type: NavigationType
}

struct ProgressView: View {
    @EnvironmentObject var shoppingCart: ShoppingCart
    var navigationItem: NavigationItem
    @Binding var show: Bool
    
    var body: some View {
        VStack(spacing: 0) {
            Button(action: {self.show.toggle() }) {
                HStack {
                    Text("SUBTOTAL")
                        .custom(font: .ultralight, size: 42)
                    Spacer()
                    Text("$\(shoppingCart.total, specifier: "%.2f")")
                        .custom(font: .bold, size: 42)
                }
            }.buttonStyle(PlainButtonStyle())
            
            NavigationLink(destination: getDestination(from: navigationItem)) {
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
                
            }.buttonStyle(PlainButtonStyle())
            
            
            HStack(spacing: 2) {
                ForEach(0..<4) { index in
                    Rectangle()
                        .fill(index == 0 ? Color.baseIndicatorSelected : Color.baseIndicator)
                        .frame(height: 4)
                }
            }
        }
    }
    
    func getDestination(from navItem: NavigationItem) -> AnyView {
            if navItem.type == .seats {
                print("tap")
                
                return AnyView(SeatsView())
            } else {
                return AnyView(EmptyView())
            }
        }
}

struct ProgressView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressView(navigationItem: NavigationItem(destination: SeatsView(), type: .seats), show: .constant(false))
    }
}


extension View {
    func phoneOnlyStackNavigationView() -> some View {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return AnyView(self.navigationViewStyle(StackNavigationViewStyle()))
        } else {
            return AnyView(self)
        }
    }
}
