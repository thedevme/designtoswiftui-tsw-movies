//
//  DefaultPreview.swift
//  NikeStore
//
//  Created by Craig Clayton on 2/23/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct DefaultPreview<Content>: View where Content: View {

    let content: () -> Content

    init(@ViewBuilder content: @escaping () -> Content) {
        self.content = content
    }

    var body: some View {
        Group {
            ZStack {
                Rectangle()
                    .fill(Color.baseBackground)
                    .edgesIgnoringSafeArea(.all)

                content()
                .colorScheme(.dark)
                .previewDevice(PreviewDevice(rawValue: "iPhone 11 Pro"))
            }

            ZStack {
                Rectangle()
                    .fill(Color.baseBackground)
                    .edgesIgnoringSafeArea(.all)

                content()
                .colorScheme(.light)
                .previewDevice(PreviewDevice(rawValue: "iPhone 11 Pro"))
            }
        }
    }
}
