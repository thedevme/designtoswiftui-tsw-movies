//
//  MovieViewModel.swift
//  DesignMovies
//
//  Created by Craig Clayton on 10/1/20.
//

import Foundation

struct ProgressItem: Identifiable {
    var id = UUID().uuidString
    var step: Int
}


class MovieViewModel: ObservableObject {
    @Published var currentStep: Int = 0
}
