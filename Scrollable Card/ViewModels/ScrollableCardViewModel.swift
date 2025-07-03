//
//  ScrollableCardViewModel.swift
//  Scrollable Card
//
//  Created by Mehmet Utku Meşe on 3.07.2025.
//

import SwiftUI


final class ScrollableCardViewModel: ObservableObject {
    @Published var items: [CardItem] = []
    // görünür (aktif) kartın ID’si
    @Published var visibleItemID: UUID?

    private let dataSource: CardDataSource

    init(dataSource: CardDataSource = CardDataSource()) {
        self.dataSource = dataSource
        self.items = dataSource.cardItems
        self.visibleItemID = items.first?.id
    }

    /// Scroll hareketiyle yeni kart göründüğünde çağrılacak yardımcı
    func selectItem(id: UUID?) {
        visibleItemID = id
    }
}
