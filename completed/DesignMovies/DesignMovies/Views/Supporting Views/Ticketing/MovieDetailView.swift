//
//  MovieDetailView.swift
//  DesignMovies
//
//  Created by Craig Clayton on 9/23/20.
//

import SwiftUI

struct MovieDetailView: View {
    var body: some View {
        HStack(alignment: .top) {
            Image("sample-image-poster")
                .resizable()
                .frame(width: 112)
            
            
            VStack(alignment: .leading) {
                Text("LOGAN").custom(font: .bold, size: 40)
                
                HStack {
                    rating
                    Text("STANDARD FORMAT")
                        .custom(font: .futuraBold, size: 10)
                        .foregroundColor(.baseAccent)
                }
                
                Spacer()
                
                Text("CMX CineBistro Hyde Park")
                Text("Today at 8:00 PM")
            }
            .custom(font: .medium, size: 18)
            Spacer()
        }.frame(height: 168)
    }
    
    var rating: some View {
        ZStack {
            Text("PG-13").custom(font: .rating, size: 15)
        }
        .background(Color.baseBackground)
        .padding(3)
        .overlay(
            RoundedRectangle(cornerRadius: 2)
                .stroke(Color.baseText, lineWidth: 1))
    }
}

struct MovieDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailView()
    }
}
