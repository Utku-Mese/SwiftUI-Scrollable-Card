//
//  TextStyle.swift
//  Scrollable Card
//
//  Created by Mehmet Utku Meşe on 3.07.2025.
//

import SwiftUICore

extension Text {
    func cardTitleStyle() -> some View {
        self.font(.system(size: 23, weight: .bold))
    }

    func cardDescriptionStyle() -> some View {
        self.font(.system(size: 14))
    }
}
