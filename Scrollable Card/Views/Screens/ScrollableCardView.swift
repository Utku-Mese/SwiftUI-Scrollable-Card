//
//  ScrollableCardView.swift
//  Scrollable Card
//
//  Created by Mehmet Utku Meşe on 3.07.2025.
//

import SwiftUI

struct ScrollableCardView: View {

    @StateObject private var viewModel = ScrollableCardViewModel()

    var body: some View {
        ScrollView {
            VStack(spacing: 0) {
                ForEach(viewModel.items) { item in
                    CardView(item: item)
                        .scrollTransition { content, phase in
                            content
                                .opacity(phase.isIdentity ? 1 : 0)
                                .scaleEffect(phase.isIdentity ? 1 : 0.9)
                        }
                        .id(item)
                }
            }
            .scrollTargetLayout()
        }
        .scrollIndicators(.hidden)
        .scrollTargetBehavior(.viewAligned)
        .scrollPosition(id: $viewModel.visibleItemID)
        .background(.gray.opacity(0.3))
        .clipShape(.rect(cornerRadius: 24))
        .overlay {
            RoundedRectangle(cornerRadius: 24)
                .stroke(lineWidth: 8)
                .foregroundStyle(.gray.opacity(0.3))
        }
        .frame(height: Constants.cardHeight)
        .padding(.leading, 16)
        .padding(.trailing, 35)
        .overlay(alignment: .trailing) {
            PageIndicator(items: viewModel.items, selectedID: viewModel.visibleItemID)
        }
    }
}


#Preview {
    ScrollableCardView()
}
