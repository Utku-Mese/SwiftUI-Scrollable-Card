//
//  BottomGradientOverlay.swift
//  Scrollable Card
//
//  Created by Mehmet Utku Meşe on 3.07.2025.
//

import SwiftUICore
import UIKit

extension View {
    func bottomGradientOverlay() -> some View {
        self.overlay(
            RoundedRectangle(cornerRadius: 24)
                .foregroundStyle(
                    LinearGradient(stops: [
                        .init(color: .white.opacity(0), location: 0.4),
                        .init(color: Color(UIColor { trait in
                            trait.userInterfaceStyle == .dark ? .black : .white
                        }).opacity(0.8), location: 1)
                    ], startPoint: .top, endPoint: .bottom)
                ),
            alignment: .bottom
        )
    }
}
