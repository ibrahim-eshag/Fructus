//
//  FruitModel.swift
//  Fructus
//
//  Created by Amged on 2/19/22.
//

import SwiftUI
// MARK: - Fruits data Model.

struct Fruit: Identifiable {
    var id = UUID() // this will AUTOMATICALLY create unique id value, to differentiate each fruit
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]  // each fruit will have dark and light colors
    var description: String
    var nutrition: [String]
}
