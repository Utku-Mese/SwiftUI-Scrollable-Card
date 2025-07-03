//
//  CardDataSource.swift
//  Scrollable Card
//
//  Created by Mehmet Utku Meşe on 3.07.2025.
//

import Foundation
import Combine

public class CardDataSource: ObservableObject {
    @Published var cardItems: [CardItem]

    public init() {
        self.cardItems = [
            CardItem(imageName: "n1", title: "Nature Escape", description: "Breathe in the fresh forest air."),
            CardItem(imageName: "n2", title: "Urban Vibes", description: "Feel the rhythm of the city streets."),
            CardItem(imageName: "n3", title: "Calm Waters", description: "Let the waves wash your worries away."),
            CardItem(imageName: "n4", title: "Mountain Hike", description: "Reach new heights and clear your mind."),
            CardItem(imageName: "n5", title: "Golden Hour", description: "Capture the beauty of fading sunlight.")
        ]
    }
}
