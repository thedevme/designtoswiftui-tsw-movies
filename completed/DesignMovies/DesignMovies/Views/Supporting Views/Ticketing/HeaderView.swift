//
//  HeaderView.swift
//  DesignMovies
//
//  Created by Craig Clayton on 9/23/20.
//

import SwiftUI

struct HeaderView: View {
    var height: CGFloat = 4
    
    var body: some View {
        GeometryReader{ reader in
            ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom)) {
                Image("sample-image")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: UIScreen.main.bounds.width, height: reader.frame(in: .global).minY > 0 ? reader.frame(in: .global).minY + (UIScreen.main.bounds.height / height) : UIScreen.main.bounds.height / height)
                    .offset(y: -reader.frame(in: .global).minY)
                 Image("overlay")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: UIScreen.main.bounds.width, height: 130)
                    .offset(y: -reader.frame(in: .global).minY)
            }
        }
        .frame(height: UIScreen.main.bounds.height / height)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        DefaultPreview {
            HeaderView()
        }
    }
}
