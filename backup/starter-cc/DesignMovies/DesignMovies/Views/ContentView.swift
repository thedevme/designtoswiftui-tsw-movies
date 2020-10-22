//
//  ContentView.swift
//  DesignMovies
//
//  Created by Craig Clayton on 9/22/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.baseBackground)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 10).fill(Color.baseSecondaryBackground).frame(width: 150, height: 50)
                    HStack(spacing: 0) {
                        Text("PICK").custom(font: .bold, size: 24)
                        Text("SEATS").custom(font: .ultralight, size: 24)
                    }
                    .foregroundColor(.baseText)
                }
                
                ZStack {
                    RoundedRectangle(cornerRadius: 4)
                        .stroke(Color.baseButtonBorder, lineWidth: 1)
                        .background(Color.baseButton)
                        .frame(width: 93, height: 33)
                    
                    HStack(spacing: 0) {
                        Text("PICK").custom(font: .bold, size: 14)
                        Text("SEATS").custom(font: .ultralight, size: 14)
                    }
                    .foregroundColor(.baseText)
                }
                .frame(width: 200, height: 100)
                .background(Color.baseSecondaryBackground)
                
                VStack(spacing: 0) {
                    Rectangle()
                        .fill(Color.baseAccent)
                        .cornerRadius(10, corners: [.topLeft, .topRight])
                        .frame(height: 30)
                    
                    Rectangle()
                        .fill(Color.baseSecondaryBackground)
                }
                .padding(.horizontal)
                
                HStack(spacing: 2) {
                    ForEach(0..<4) { index in
                        Rectangle()
                            .fill(index == 0 ? Color.baseIndicatorSelected : Color.baseIndicator)
                            .frame(width: 50, height: 4)
                    }
                }
            }
        }
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DefaultPreview() {
            ContentView()
        }
    }
}
