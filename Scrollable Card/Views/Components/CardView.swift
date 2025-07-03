//
//  CardView.swift
//  Scrollable Card
//
//  Created by Mehmet Utku Meşe on 3.07.2025.
//

import SwiftUI

struct CardView: View {
    let item: CardItem
    
    var body: some View {
        Image(item.imageName)
            .resizable()
            .scaledToFit()
            .frame(height: Constants.cardHeight)
            .clipShape(.rect(cornerRadius: 24))
            .bottomGradientOverlay()
            .overlay(alignment: .bottomLeading, content: {
                VStack(alignment: .leading, spacing: 5){
                    Text(item.title)
                        .cardTitleStyle()
                    Text(item.description)
                        .cardDescriptionStyle()
                }.padding()
            })
    }
}

#Preview {
    CardView(item: CardItem(imageName: "n1", title: "Exam", description: "Exam"))
}
