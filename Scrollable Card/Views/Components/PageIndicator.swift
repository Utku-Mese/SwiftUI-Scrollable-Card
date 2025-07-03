//
//  PageIndicator.swift
//  Scrollable Card
//
//  Created by Mehmet Utku Meşe on 3.07.2025.
//

import SwiftUI

struct PageIndicator: View {
    let items: [CardItem]
    let selectedID: UUID?

    var body: some View {
        VStack(spacing: 12) {
            ForEach(items) { item in
                let selected = item.id == selectedID
                Circle()
                    .frame(width: selected ? 10 : 6,
                           height: selected ? 10 : 6)
                    .foregroundStyle(selected ? Color.primary : .gray)
                    .animation(.linear, value: selectedID)
            }
        }
        .padding(.trailing, 10)
    }
}

#Preview {
    PageIndicator(
        items: [
            .init(imageName: "image1", title: "Title 1", description: "Description 1"),
            .init(imageName: "image2", title: "Title 2", description: "Description 2"),
            .init(imageName: "image3", title: "Title 3", description: "Description 3"),
        ],
        selectedID: UUID(uuidString: "3")
    )
}
