//
//  CardItem.swift
//  Scrollable Card
//
//  Created by Mehmet Utku Meşe on 3.07.2025.
//

import Foundation

struct CardItem: Identifiable, Hashable {
    let id = UUID()
    let imageName: String
    let title: String
    let description: String
}
